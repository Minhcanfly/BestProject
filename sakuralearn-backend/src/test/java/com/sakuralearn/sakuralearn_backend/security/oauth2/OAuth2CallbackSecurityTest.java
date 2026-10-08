package com.sakuralearn.sakuralearn_backend.security.oauth2;

import jakarta.servlet.http.Cookie;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockFilterChain;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClientService;
import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.client.registration.InMemoryClientRegistrationRepository;
import org.springframework.security.oauth2.client.web.OAuth2LoginAuthenticationFilter;
import org.springframework.security.oauth2.core.AuthorizationGrantType;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.test.util.ReflectionTestUtils;

import static com.sakuralearn.sakuralearn_backend.security.oauth2.HttpCookieOAuth2AuthorizationRequestRepositoryTest.*;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class OAuth2CallbackSecurityTest {
    private static final String COOKIE = HttpCookieOAuth2AuthorizationRequestRepository.OAUTH2_AUTHORIZATION_REQUEST_COOKIE_NAME;
    private final HttpCookieOAuth2AuthorizationRequestRepository repository = new HttpCookieOAuth2AuthorizationRequestRepository(true);
    private final AuthenticationManager authenticationManager = mock(AuthenticationManager.class);
    private final OAuth2AuthenticationFailureHandler failureHandler = new OAuth2AuthenticationFailureHandler(repository);

    @Test
    void realCallbackFilterRejectsForgeryAndReplayBeforeTokenExchange() throws Exception {
        var registration = ClientRegistration.withRegistrationId("google")
                .clientId("client-fixture").clientSecret("secret-fixture")
                .authorizationGrantType(AuthorizationGrantType.AUTHORIZATION_CODE)
                .redirectUri("https://api.example.com/login/oauth2/code/google")
                .authorizationUri("https://provider.example.com/authorize")
                .tokenUri("https://provider.example.com/token").build();
        var filter = new OAuth2LoginAuthenticationFilter(new InMemoryClientRegistrationRepository(registration),
                mock(OAuth2AuthorizedClientService.class));
        filter.setAuthorizationRequestRepository(repository);
        filter.setAuthenticationManager(authenticationManager);
        configureFailureRedirect();
        filter.setAuthenticationFailureHandler(failureHandler);
        when(authenticationManager.authenticate(any())).thenThrow(
                new OAuth2AuthenticationException(new OAuth2Error("access_denied"), "private provider detail"));

        MockHttpServletResponse saved = new MockHttpServletResponse();
        repository.saveAuthorizationRequest(authorization("one"), new MockHttpServletRequest(), saved);
        Cookie cookie = saved.getCookie(COOKIE);
        filter.doFilter(callback(new Cookie(COOKIE, "rO0ABXQABmF0dGFjaw=="), "one"),
                new MockHttpServletResponse(), new MockFilterChain());
        verifyNoInteractions(authenticationManager);

        MockHttpServletResponse response = new MockHttpServletResponse();
        filter.doFilter(callback(cookie, "one"), response, new MockFilterChain());
        verify(authenticationManager, times(1)).authenticate(any());
        assertEquals("https://app.example.com/oauth2/redirect?error=oauth2_authentication_failed", response.getRedirectedUrl());
        assertEquals(0, response.getCookie(COOKIE).getMaxAge());
        filter.doFilter(callback(cookie, "one"), new MockHttpServletResponse(), new MockFilterChain());
        verifyNoMoreInteractions(authenticationManager);
    }

    @Test
    void failureHandlerClearsPendingRequestEvenIfFilterHasNotConsumedIt() throws Exception {
        configureFailureRedirect();
        MockHttpServletResponse saved = new MockHttpServletResponse();
        repository.saveAuthorizationRequest(authorization("one"), new MockHttpServletRequest(), saved);
        MockHttpServletRequest request = callback(saved.getCookie(COOKIE), "one");
        MockHttpServletResponse response = new MockHttpServletResponse();
        failureHandler.onAuthenticationFailure(request, response,
                new OAuth2AuthenticationException(new OAuth2Error("access_denied")));
        assertNull(repository.loadAuthorizationRequest(request));
        assertEquals(0, response.getCookie(COOKIE).getMaxAge());
    }

    private void configureFailureRedirect() {
        ReflectionTestUtils.setField(failureHandler, "redirectUri", "https://app.example.com/oauth2/redirect");
    }
}
