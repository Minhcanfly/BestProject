package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LoginRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.RefreshTokenRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.RegisterRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.TokenRefreshResponse;
import com.sakuralearn.sakuralearn_backend.entity.RefreshToken;
import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.entity.PasswordResetToken;
import com.sakuralearn.sakuralearn_backend.entity.VerificationToken;
import com.sakuralearn.sakuralearn_backend.repository.PasswordResetTokenRepository;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.repository.VerificationTokenRepository;
import com.sakuralearn.sakuralearn_backend.dto.response.AuthResponse;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.*;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService {

    private final AuthenticationManager authenticationManager;
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final VerificationTokenRepository tokenRepository;
    private final PasswordResetTokenRepository passwordResetTokenRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final RefreshTokenService refreshTokenService;
    private final AuditLogService auditLogService;
    private final MailService mailService;
    private final HttpServletRequest request;
    private final MessageSource messageSource;

    @Value("${app.auth.verify-url}")
    private String verifyUrlBase;

    @Value("${app.auth.reset-url}")
    private String resetUrlBase;

    @Override
    public AuthResponse authenticateUser(LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        String jwt = jwtService.generateToken(userDetails);
        RefreshToken refreshToken = refreshTokenService.createRefreshToken(userDetails.getId());

        List<String> roles = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());

        // Audit Log
        auditLogService.log("users", userDetails.getId(), "INSERT", null, "Login success: " + userDetails.getEmail(),
                request.getRemoteAddr(), request.getHeader("User-Agent"));

        User uEntity = userRepository.findById(userDetails.getId()).orElseThrow();

        return AuthResponse.builder()
                .token(jwt)
                .refreshToken(refreshToken.getToken())
                .email(userDetails.getEmail())
                .username(userDetails.getUsername())
                .fullName(userDetails.getFullName())
                .id(uEntity.getId())
                .avatarUrl(uEntity.getAvatarUrl())
                .preferredLanguage(uEntity.getPreferredLanguage())
                .xp(uEntity.getXp())
                .roles(roles)
                .build();
    }

    @Override
    @Transactional
    public void registerUser(RegisterRequest signUpRequest) {
        if (userRepository.existsByEmail(signUpRequest.getEmail())) {
            throw new RuntimeException(messageSource.getMessage("error.email.in_use", null, LocaleContextHolder.getLocale()));
        }

        if (userRepository.existsByUsername(signUpRequest.getUsername())) {
            throw new RuntimeException(messageSource.getMessage("error.username.in_use", null, LocaleContextHolder.getLocale()));
        }

        User user = User.builder()
                .email(signUpRequest.getEmail())
                .username(signUpRequest.getUsername())
                .passwordHash(passwordEncoder.encode(signUpRequest.getPassword()))
                .fullName(signUpRequest.getFullName())
                .isActive(false) // Deactive until email verified
                .build();

        Set<Role> roles = new HashSet<>();
        // Default role is STUDENT
        Role userRole = roleRepository.findByName("STUDENT")
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.role.not_found", null, LocaleContextHolder.getLocale())));
        roles.add(userRole);

        user.setRoles(roles);
        User savedUser = userRepository.save(user);

        // Audit Log
        auditLogService.log("users", savedUser.getId(), "INSERT", null, "New user registered: " + savedUser.getEmail(),
                request.getRemoteAddr(), request.getHeader("User-Agent"));

        // Create Verification Token
        String token = java.util.UUID.randomUUID().toString();
        VerificationToken verificationToken = VerificationToken.builder()
                .token(token)
                .user(savedUser)
                .expiryDate(java.time.ZonedDateTime.now().plusHours(24))
                .build();
        tokenRepository.save(verificationToken);

        // Send Email
        java.util.Map<String, Object> variables = new java.util.HashMap<>();
        variables.put("name", savedUser.getFullName());
        variables.put("verifyUrl", verifyUrlBase + "?token=" + token);
        mailService.sendHtmlEmail(savedUser.getEmail(), "Xác thực tài khoản SakuraLearn", "verification-email", variables);
    }

    @Override
    public TokenRefreshResponse refreshToken(RefreshTokenRequest request) {
        String requestRefreshToken = request.getRefreshToken();

        return refreshTokenService.findByToken(requestRefreshToken)
                .map(refreshTokenService::verifyExpiration)
                .map(RefreshToken::getUser)
                .map(user -> {
                    if (!user.getIsActive()) {
                        throw new org.springframework.security.authentication.DisabledException(messageSource.getMessage("error.user.not_active", null, LocaleContextHolder.getLocale()));
                    }
                    String token = jwtService.generateToken(UserDetailsImpl.build(user));
                    return TokenRefreshResponse.builder()
                            .accessToken(token)
                            .refreshToken(requestRefreshToken)
                            .build();
                })
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.token.not_in_db", null, LocaleContextHolder.getLocale())));
    }

    @Override
    @Transactional
    public boolean verifyEmail(String token) {
        return tokenRepository.findByToken(token)
                .map(verificationToken -> {
                    if (verificationToken.getExpiryDate().isBefore(java.time.ZonedDateTime.now())) {
                        return false;
                    }
                    User user = verificationToken.getUser();
                    user.setIsActive(true);
                    user.setEmailVerified(true);
                    userRepository.save(user);
                    tokenRepository.delete(verificationToken);
                    return true;
                })
                .orElse(false);
    }

    @Override
    @Transactional
    public void logout(java.util.UUID userId) {
        refreshTokenService.deleteByUserId(userId);
    }

    @Override
    @Transactional
    public void forgotPassword(String email) {
        User user = userRepository.findByEmailAndIsDeletedFalse(email)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));

        // Delete old tokens if any
        passwordResetTokenRepository.deleteByUser(user);

        String token = java.util.UUID.randomUUID().toString();
        PasswordResetToken resetToken = PasswordResetToken.builder()
                .token(token)
                .user(user)
                .expiryDate(java.time.ZonedDateTime.now().plusHours(1))
                .build();
        passwordResetTokenRepository.save(resetToken);

        // Send Email
        java.util.Map<String, Object> variables = new java.util.HashMap<>();
        variables.put("name", user.getFullName());
        variables.put("resetUrl", resetUrlBase + "?token=" + token);
        mailService.sendHtmlEmail(user.getEmail(), "Cài đặt lại mật khẩu SakuraLearn", "password-reset", variables);
    }

    @Override
    @Transactional
    public void resetPassword(String token, String newPassword) {
        PasswordResetToken resetToken = passwordResetTokenRepository.findByToken(token)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.token.reset_invalid", null, LocaleContextHolder.getLocale())));

        if (resetToken.getExpiryDate().isBefore(java.time.ZonedDateTime.now())) {
            passwordResetTokenRepository.delete(resetToken);
            throw new RuntimeException(messageSource.getMessage("error.token.reset_expired", null, LocaleContextHolder.getLocale()));
        }

        User user = resetToken.getUser();
        user.setPasswordHash(passwordEncoder.encode(newPassword));
        userRepository.save(user);

        passwordResetTokenRepository.delete(resetToken);
    }
}
