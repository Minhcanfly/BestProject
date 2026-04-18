package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.entity.RefreshToken;
import com.sakuralearn.sakuralearn_backend.repository.RefreshTokenRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.RefreshTokenService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class RefreshTokenServiceImpl implements RefreshTokenService {

    @Value("${app.jwt.refreshExpirationMs}")
    private Long refreshTokenDurationMs;

    private final RefreshTokenRepository refreshTokenRepository;
    private final UserRepository userRepository;
    private final MessageSource messageSource;

    @Override
    public Optional<RefreshToken> findByToken(String token) {
        return refreshTokenRepository.findByToken(token);
    }

    @Override
    public RefreshToken createRefreshToken(UUID userId) {
        RefreshToken refreshToken = new RefreshToken();

        refreshToken.setUser(userRepository.findById(userId).orElseThrow(
                () -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale()))));
        refreshToken.setExpiryDate(Instant.now().plusMillis(refreshTokenDurationMs));
        refreshToken.setToken(UUID.randomUUID().toString());

        refreshToken = refreshTokenRepository.save(refreshToken);
        return refreshToken;
    }

    @Override
    public RefreshToken verifyExpiration(RefreshToken token) {
        if (token.getExpiryDate().compareTo(Instant.now()) < 0) {
            refreshTokenRepository.delete(token);
            throw new RuntimeException(messageSource.getMessage("error.token.refresh_expired", null, LocaleContextHolder.getLocale()));
        }
        return token;
    }

    @Override
    @Transactional
    public int deleteByUserId(UUID userId) {
        return refreshTokenRepository.deleteByUser(userRepository.findById(userId).orElseThrow(
                () -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale()))
        ));
    }
}
