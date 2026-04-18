package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.entity.RefreshToken;
import java.util.Optional;
import java.util.UUID;

public interface RefreshTokenService {
    Optional<RefreshToken> findByToken(String token);
    RefreshToken createRefreshToken(UUID userId);
    RefreshToken verifyExpiration(RefreshToken token);
    int deleteByUserId(UUID userId);
}
