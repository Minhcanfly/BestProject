package com.sakuralearn.sakuralearn_backend.security.oauth2;

import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.JwtService;
import com.sakuralearn.sakuralearn_backend.service.RefreshTokenService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponentsBuilder;

import java.io.IOException;

@Component
@RequiredArgsConstructor
public class OAuth2AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private final JwtService jwtService;
    private final RefreshTokenService refreshTokenService;
    private final UserRepository userRepository;

    @Value("${app.oauth2.redirect-uri}")
    private String redirectUri;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        if (response.isCommitted()) {
            return;
        }

        OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
        String email = oAuth2User.getAttribute("email");
        User user = userRepository.findByEmailAndIsDeletedFalse(email).orElseThrow(() -> new RuntimeException("User not found after OAuth2 login"));

        if (!user.getIsActive()) {
            String lockedUrl = UriComponentsBuilder.fromUriString(redirectUri)
                    .queryParam("error", "user_blocked")
                    .build().toUriString();
            getRedirectStrategy().sendRedirect(request, response, lockedUrl);
            return;
        }

        UserDetailsImpl userDetails = UserDetailsImpl.build(user);
        String token = jwtService.generateToken(userDetails);
        String refreshToken = refreshTokenService.createRefreshToken(user.getId()).getToken();

        String targetUrl = UriComponentsBuilder.fromUriString(redirectUri)
                .queryParam("token", token)
                .queryParam("refreshToken", refreshToken)
                .queryParam("id", user.getId().toString())
                .queryParam("email", user.getEmail())
                .queryParam("username", user.getUsername())
                .queryParam("fullName", user.getFullName())
                .queryParam("avatarUrl", user.getAvatarUrl() != null ? user.getAvatarUrl() : "")
                .queryParam("roles", String.join(",", user.getRoles().stream().map(r -> r.getName()).toList()))
                .build().toUriString();

        getRedirectStrategy().sendRedirect(request, response, targetUrl);
    }
}
