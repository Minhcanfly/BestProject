package com.sakuralearn.sakuralearn_backend.security.oauth2;

import jakarta.servlet.http.Cookie;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.endpoint.OAuth2AuthorizationRequest;

import java.time.Clock;
import java.time.Instant;
import java.time.ZoneOffset;
import java.util.concurrent.Executors;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class HttpCookieOAuth2AuthorizationRequestRepositoryTest {
    private static final String COOKIE = HttpCookieOAuth2AuthorizationRequestRepository.OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME;
    private static final String CALLBACK = "https://api.example.com/login/oauth2/code/google";
    private static final Instant NOW = Instant.parse("2026-10-06T00:00:00Z");
    private final Clock clock = mock(Clock.class);
    private final HttpCookieOAuth2AuthorizationRequestRepository repository =
            new HttpCookieOAuth2AuthorizationRequestRepository(clock, 2, true);

    HttpCookieOAuth2AuthorizationRequestRepositoryTest() {
        when(clock.instant()).thenReturn(NOW);
    }

    @Test
    void roundTripKeepsAuthorizationDataServerSideAndConsumesOnce() {
        OAuth2AuthorizationRequest authorization = authorization("state-one");
        Cookie cookie = save(authorization);
        assertTrue(cookie.getValue().matches("[A-Za-z0-9_-]{43}"));
        assertFalse(cookie.getValue().contains("state-one"));
        assertTrue(cookie.isHttpOnly());
        assertTrue(cookie.getSecure());
        assertEquals("Lax", cookie.getAttribute("SameSite"));
        assertEquals(180, cookie.getMaxAge());
        assertEquals("/", cookie.getPath());

        MockHttpServletRequest callback = callback(cookie, "state-one");
        assertSame(authorization, repository.loadAuthorizationRequest(callback));
        MockHttpServletResponse response = new MockHttpServletResponse();
        assertSame(authorization, repository.removeAuthorizationRequest(callback, response));
        assertEquals(0, response.getCookie(COOKIE).getMaxAge());
        assertEquals(0, response.getCookie("redirect_uri").getMaxAge());
        assertNull(repository.loadAuthorizationRequest(callback));
        assertNull(repository.removeAuthorizationRequest(callback, new MockHttpServletResponse()));
    }

    @ParameterizedTest
    @ValueSource(strings = {"not-base64!", "rO0ABXQABmF0dGFjaw==", "", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"})
    void untrustedCookieIsRejectedWithoutDecoding(String payload) {
        save(authorization("state-one"));
        MockHttpServletRequest request = callback(new Cookie(COOKIE, payload), "state-one");
        assertNull(repository.loadAuthorizationRequest(request));
        assertNull(repository.removeAuthorizationRequest(request, new MockHttpServletResponse()));
    }

    @Test
    void stateAloneCannotAuthenticateAnotherBrowser() {
        Cookie cookie = save(authorization("state-one"));
        MockHttpServletRequest noCookie = callback(null, "state-one");
        assertNull(repository.removeAuthorizationRequest(noCookie, new MockHttpServletResponse()));
        Cookie otherBrowser = save(authorization("state-two"));
        assertNull(repository.removeAuthorizationRequest(callback(otherBrowser, "state-one"), new MockHttpServletResponse()));
        assertNotNull(repository.removeAuthorizationRequest(callback(cookie, "state-one"), new MockHttpServletResponse()));
    }

    @Test
    void wrongOrMissingStateIsRejectedAndAttemptConsumed() {
        for (String state : new String[]{"tampered", null}) {
            Cookie cookie = save(authorization("state-one"));
            assertNull(repository.removeAuthorizationRequest(callback(cookie, state), new MockHttpServletResponse()));
            assertNull(repository.loadAuthorizationRequest(callback(cookie, "state-one")));
        }
    }

    @ParameterizedTest
    @ValueSource(strings = {"provider", "host", "scheme", "path"})
    void callbackMustMatchSavedProviderAndRedirectUri(String mismatch) {
        MockHttpServletRequest request = callback(save(authorization("state-one")), "state-one");
        switch (mismatch) {
            case "provider" -> request.setRequestURI("/login/oauth2/code/other");
            case "host" -> request.setServerName("other.example.com");
            case "scheme" -> request.setScheme("http");
            case "path" -> request.setRequestURI("/unexpected");
        }
        assertNull(repository.removeAuthorizationRequest(request, new MockHttpServletResponse()));
    }

    @Test
    void expiresAtTheDeadlineEvenIfBrowserKeepsCookie() {
        Cookie cookie = save(authorization("state-one"));
        when(clock.instant()).thenReturn(NOW.plusSeconds(179));
        assertNotNull(repository.loadAuthorizationRequest(callback(cookie, "state-one")));
        when(clock.instant()).thenReturn(NOW.plusSeconds(180));
        assertNull(repository.removeAuthorizationRequest(callback(cookie, "state-one"), new MockHttpServletResponse()));
    }

    @Test
    void boundsMemoryAndReclaimsExpiredEntries() {
        save(authorization("one"));
        save(authorization("two"));
        assertThrows(OAuth2AuthenticationException.class, () -> save(authorization("three")));
        when(clock.instant()).thenReturn(NOW.plusSeconds(180));
        assertDoesNotThrow(() -> save(authorization("three")));
    }

    @Test
    void replacingOrCancellingLoginInvalidatesPreviousHandle() {
        Cookie previous = save(authorization("one"));
        MockHttpServletRequest request = callback(previous, "one");
        MockHttpServletResponse response = new MockHttpServletResponse();
        repository.saveAuthorizationRequest(authorization("two"), request, response);
        assertNull(repository.loadAuthorizationRequest(request));
        MockHttpServletRequest next = callback(response.getCookie(COOKIE), "two");
        repository.saveAuthorizationRequest(null, next, new MockHttpServletResponse());
        assertNull(repository.loadAuthorizationRequest(next));
    }

    @Test
    void concurrentCallbacksCanConsumeOnlyOnce() throws Exception {
        Cookie cookie = save(authorization("one"));
        try (var executor = Executors.newFixedThreadPool(2)) {
            var first = executor.submit(() -> repository.removeAuthorizationRequest(callback(cookie, "one"), new MockHttpServletResponse()));
            var second = executor.submit(() -> repository.removeAuthorizationRequest(callback(cookie, "one"), new MockHttpServletResponse()));
            assertEquals(1, (first.get() == null ? 0 : 1) + (second.get() == null ? 0 : 1));
        }
    }

    @Test
    void localHttpWorksButHttpsAlwaysUsesSecureCookie() {
        var local = new HttpCookieOAuth2AuthorizationRequestRepository(Clock.fixed(NOW, ZoneOffset.UTC), 2, false);
        MockHttpServletRequest request = new MockHttpServletRequest();
        MockHttpServletResponse response = new MockHttpServletResponse();
        local.saveAuthorizationRequest(authorization("one"), request, response);
        assertFalse(response.getCookie(COOKIE).getSecure());
        request.setSecure(true);
        response = new MockHttpServletResponse();
        local.saveAuthorizationRequest(authorization("two"), request, response);
        assertTrue(response.getCookie(COOKIE).getSecure());
    }

    private Cookie save(OAuth2AuthorizationRequest authorization) {
        MockHttpServletResponse response = new MockHttpServletResponse();
        MockHttpServletRequest request = new MockHttpServletRequest();
        request.setParameter("redirect_uri", "https://untrusted.example.com");
        repository.saveAuthorizationRequest(authorization, request, response);
        assertEquals(0, response.getCookie("redirect_uri").getMaxAge());
        return response.getCookie(COOKIE);
    }

    static OAuth2AuthorizationRequest authorization(String state) {
        return OAuth2AuthorizationRequest.authorizationCode()
                .authorizationUri("https://provider.example.com/authorize")
                .clientId("client-fixture").redirectUri(CALLBACK).state(state)
                .attributes(attributes -> attributes.put("registration_id", "google"))
                .build();
    }

    static MockHttpServletRequest callback(Cookie cookie, String state) {
        MockHttpServletRequest request = new MockHttpServletRequest("GET", "/login/oauth2/code/google");
        request.setScheme("https");
        request.setServerName("api.example.com");
        request.setServerPort(443);
        request.setSecure(true);
        if (cookie != null) request.setCookies(cookie);
        if (state != null) request.setParameter("state", state);
        request.setParameter("code", "code-fixture");
        return request;
    }
}
