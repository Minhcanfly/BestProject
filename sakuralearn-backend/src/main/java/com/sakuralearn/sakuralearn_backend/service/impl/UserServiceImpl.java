package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.mapper.UserMapper;
import com.sakuralearn.sakuralearn_backend.dto.response.ProfileResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.UserAdminResponse;
import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.AuditLogService;
import com.sakuralearn.sakuralearn_backend.service.FileStorageService;
import com.sakuralearn.sakuralearn_backend.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final FileStorageService fileStorageService;
    private final AuditLogService auditLogService;
    private final HttpServletRequest request;
    private final MessageSource messageSource;
    private final UserMapper userMapper;

    @Override
    public ProfileResponse getUserProfile(UUID userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));
        return userMapper.toProfileResponse(user);
    }

    @Override
    @Transactional
    public ProfileResponse updateProfile(UUID userId, String fullName, String preferredLanguage, MultipartFile avatar) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));

        if (fullName != null && !fullName.trim().isEmpty()) {
            user.setFullName(fullName);
        }
        
        if (preferredLanguage != null && (preferredLanguage.equals("vi") || preferredLanguage.equals("ja") || preferredLanguage.equals("en"))) {
            user.setPreferredLanguage(preferredLanguage);
        }

        if (avatar != null && !avatar.isEmpty()) {
            if (user.getAvatarUrl() != null && !user.getAvatarUrl().isEmpty()) {
                fileStorageService.deleteFile(user.getAvatarUrl());
            }
            String newAvatarUrl = fileStorageService.uploadFile(avatar, "avatars");
            user.setAvatarUrl(newAvatarUrl);
        }

        User updatedUser = userRepository.save(user);

        // Audit Log
        auditLogService.log("users", userId, "UPDATE", "Internal profile update", "Updated by user",
                request.getRemoteAddr(), request.getHeader("User-Agent"));

        return userMapper.toProfileResponse(updatedUser);
    }

    @Override
    public Page<UserAdminResponse> getAllUsers(Pageable pageable, String search) {
        Page<User> users;
        if (search != null && !search.trim().isEmpty()) {
            users = userRepository.searchUsers(search, pageable);
        } else {
            users = userRepository.findAll(pageable);
        }
        return users.map(userMapper::toUserAdminResponse);
    }

    @Override
    @Transactional
    public void updateUserStatus(UUID userId, boolean isActive) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));
        
        boolean oldStatus = user.getIsActive();
        user.setIsActive(isActive);
        userRepository.save(user);

        // Audit Log
        auditLogService.log("users", userId, "UPDATE", "Status: " + oldStatus, "Status: " + isActive,
                request.getRemoteAddr(), request.getHeader("User-Agent"));
    }

    @Override
    @Transactional
    public void updateUserRoles(UUID userId, Set<String> roleNames) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));

        Set<Role> roles = roleNames.stream()
                .map(name -> roleRepository.findByName(name)
                        .orElseThrow(() -> new RuntimeException("Role not found: " + name)))
                .collect(Collectors.toSet());

        String oldRoles = user.getRoles().stream().map(Role::getName).collect(Collectors.joining(","));
        user.setRoles(roles);
        userRepository.save(user);

        // Audit Log
        auditLogService.log("users", userId, "UPDATE", "Roles: " + oldRoles, "Roles: " + String.join(",", roleNames),
                request.getRemoteAddr(), request.getHeader("User-Agent"));
    }

}
