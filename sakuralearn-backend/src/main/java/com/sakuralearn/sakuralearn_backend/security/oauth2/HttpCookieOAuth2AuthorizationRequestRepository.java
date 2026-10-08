package com.sakuralearn.sakuralearn_backend.security.oauth2;

import com.sakuralearn.sakuralearn_backend.util.CookieUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.oauth2.client.web.AuthorizationRequestRepository;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import java.security.SecureRandom;
import java.time.Clock;
import java.time.Instant;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

/**
 * Holds authorization requests in a bounded, process-local store. The cookie
 * contains only a random lookup handle; no client data is deserialized.
 * Multiple replicas require sticky routing or an atomic shared store.
 */
@Component
public class HttpCookieOAuth2AuthorizationRequestRepository implements AuthorizationRequestRepository<OAuth2AuthorizationRequest> {
    public static final String OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME = "oauth2_auth_request";
    public static final String REDIRECT_URI_PARAM_COOKIE_NAME = "redirect_uri";
    private static final int cookieExpireSeconds = 180;
    private final Map<String, PendingRequest> pendingRequests = new HashMap<>();
    private final SecureRandom random = new SecureRandom();
    private final Clock clock;
    private final int capacity;
    private final boolean secureCookies;

    @Autowired
    public HttpCookieOAuth2AuthorizationRequestRepository(
            @Value("${app.oauth2.cookie-secure:false}") boolean secureCookies) {
        this(Clock.systemUTC(), 10_000, secureCookies);
    }

    HttpCookieOAuth2AuthorizationRequestRepository(Clock clock, int capacity, boolean secureCookies) {
        this.clock = clock;
        this.capacity = capacity;
        this.secureCookies = secureCookies;
    }

    @Override
    public synchronized OAuth2AuthorizationRequest loadAuthorizationRequest(HttpServletRequest request) {
        Assert.notNull(request, "request cannot be null");
        purgeExpiredRequests();
        return matchingRequest(pendingRequests.get(handle(request)), request);
    }

    @Override
    public synchronized void saveAuthorizationRequest(OAuth2AuthorizationRequest authorizationRequest, HttpServletRequest request, HttpServletResponse response) {
        Assert.notNull(request, "request cannot be null");
        Assert.notNull(response, "response cannot be null");

        if (authorizationRequest == null) {
            removeAuthorizationRequestCookies(request, response);
            return;
        }

        Assert.hasText(authorizationRequest.getState(), "OAuth state cannot be empty");
        Assert.hasText(authorizationRequest.getRedirectUri(), "OAuth callback cannot be empty");
        purgeExpiredRequests();
        pendingRequests.remove(handle(request));
        if (pendingRequests.size() >= capacity) {
            throw new OAuth2AuthenticationException(new OAuth2Error("temporarily_unavailable"));
        }
        byte[] bytes = new byte[32];
        String handle;
        do {
            random.nextBytes(bytes);
            handle = Base64.getUrlEncoder().withoutPadding().encodeToString(bytes);
        } while (pendingRequests.containsKey(handle));
        pendingRequests.put(handle, new PendingRequest(authorizationRequest,
                clock.instant().plusSeconds(cookieExpireSeconds)));
        CookieUtils.addCookie(response, OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME, handle,
                cookieExpireSeconds, secureCookies || request.isSecure());
        // The frontend redirect is server configuration, never a browser-supplied cookie.
        CookieUtils.deleteCookie(request, response, REDIRECT_URI_PARAM_COOKIE_NAME,
                secureCookies || request.isSecure());
    }

    @Override
    public synchronized OAuth2AuthorizationRequest removeAuthorizationRequest(HttpServletRequest request, HttpServletResponse response) {
        Assert.notNull(request, "request cannot be null");
        Assert.notNull(response, "response cannot be null");
        PendingRequest pending = pendingRequests.remove(handle(request));
        removeAuthorizationRequestCookies(request, response);
        return matchingRequest(pending, request);
    }

    public synchronized void removeAuthorizationRequestCookies(HttpServletRequest request, HttpServletResponse response) {
        pendingRequests.remove(handle(request));
        boolean secure = secureCookies || request.isSecure();
        CookieUtils.deleteCookie(request, response, OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME, secure);
        CookieUtils.deleteCookie(request, response, REDIRECT_URI_PARAM_COOKIE_NAME, secure);
    }

    private String handle(HttpServletRequest request) {
        return CookieUtils.getCookie(request, OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME)
                .map(cookie -> cookie.getValue())
                .filter(value -> value.matches("[A-Za-z0-9_-]{43}"))
                .orElse(null);
    }

    private OAuth2AuthorizationRequest matchingRequest(PendingRequest pending, HttpServletRequest request) {
        if (pending == null || !clock.instant().isBefore(pending.expiresAt())) {
            return null;
        }
        OAuth2AuthorizationRequest authorization = pending.authorization();
        // The exact callback URI also binds the provider's registration ID in its path.
        if (!authorization.getState().equals(request.getParameter("state"))
                || !authorization.getRedirectUri().equals(request.getRequestURL().toString())) {
            return null;
        }
        return authorization;
    }

    private void purgeExpiredRequests() {
        Instant now = clock.instant();
        pendingRequests.values().removeIf(pending -> !now.isBefore(pending.expiresAt()));
    }

    private record PendingRequest(OAuth2AuthorizationRequest authorization, Instant expiresAt) { }
}
