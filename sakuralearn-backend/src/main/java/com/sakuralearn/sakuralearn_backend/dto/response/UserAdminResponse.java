package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
@Builder
public class UserAdminResponse {
    private UUID id;
    private String username;
    private String email;
    private String fullName;
    private String avatarUrl;
    private Boolean isActive;
    private Boolean emailVerified;
    private Long xp;
    private Integer currentStreak;
    private List<String> roles;
    private ZonedDateTime createdAt;
    private java.time.LocalDate lastActivityDate;
}
