package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProfileResponse {
    private String id;
    private String username;
    private String email;
    private String fullName;
    private String avatarUrl;
    private String preferredLanguage;
    private Long xp;
    private Integer currentStreak;
}
