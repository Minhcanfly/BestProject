package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.response.UserAdminResponse;
import com.sakuralearn.sakuralearn_backend.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
import java.util.Set;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/admin/users")
@RequiredArgsConstructor
@PreAuthorize("hasRole('ADMIN')")
public class AdminUserController {

    private final UserService userService;

    @GetMapping
    public ResponseEntity<Page<UserAdminResponse>> getAllUsers(
            @PageableDefault(size = 20) Pageable pageable,
            @RequestParam(required = false) String search) {
        return ResponseEntity.ok(userService.getAllUsers(pageable, search));
    }

    @PatchMapping("/{id}/status")
    public ResponseEntity<?> updateUserStatus(
            @PathVariable UUID id,
            @RequestParam boolean isActive) {
        userService.updateUserStatus(id, isActive);
        return ResponseEntity.ok(Map.of("message", "User status updated successfully"));
    }

    @PatchMapping("/{id}/roles")
    public ResponseEntity<?> updateUserRoles(
            @PathVariable UUID id,
            @RequestBody Set<String> roles) {
        userService.updateUserRoles(id, roles);
        return ResponseEntity.ok(Map.of("message", "User roles updated successfully"));
    }
}
