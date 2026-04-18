package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.ProfileResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.UserAdminResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;
import java.util.UUID;
import java.util.Set;

public interface UserService {
    ProfileResponse getUserProfile(UUID userId);
    ProfileResponse updateProfile(UUID userId, String fullName, String preferredLanguage, MultipartFile avatar);
    
    // Admin features
    Page<UserAdminResponse> getAllUsers(Pageable pageable, String search);
    void updateUserStatus(UUID userId, boolean isActive);
    void updateUserRoles(UUID userId, Set<String> roles);
}
