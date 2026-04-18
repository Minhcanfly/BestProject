package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LoginRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.RegisterRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.RefreshTokenRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.AuthResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.TokenRefreshResponse;

public interface AuthService {
    AuthResponse authenticateUser(LoginRequest loginRequest);
    void registerUser(RegisterRequest signUpRequest);
    TokenRefreshResponse refreshToken(RefreshTokenRequest request);
    boolean verifyEmail(String token);
    void logout(java.util.UUID userId);
    void forgotPassword(String email);
    void resetPassword(String token, String newPassword);
}
