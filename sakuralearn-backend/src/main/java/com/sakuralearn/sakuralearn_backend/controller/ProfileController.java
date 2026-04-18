package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/v1/users")
@RequiredArgsConstructor
public class ProfileController {

    private final UserService userService;

    @GetMapping("/me")
    public ResponseEntity<?> getMyProfile(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        if (userDetails == null) {
            return ResponseEntity.status(401).body(java.util.Map.of("error", "Unauthorized"));
        }
        return ResponseEntity.ok(userService.getUserProfile(userDetails.getId()));
    }

    @PutMapping("/me")
    public ResponseEntity<?> updateMyProfile(
            @AuthenticationPrincipal UserDetailsImpl userDetails,
            @RequestParam(value = "fullName", required = false) String fullName,
            @RequestParam(value = "preferredLanguage", required = false) String preferredLanguage,
            @RequestPart(value = "avatar", required = false) MultipartFile avatar) {
            
        if (userDetails == null) {
            return ResponseEntity.status(401).body(java.util.Map.of("error", "Unauthorized"));
        }
        
        return ResponseEntity.ok(userService.updateProfile(userDetails.getId(), fullName, preferredLanguage, avatar));
    }
}
