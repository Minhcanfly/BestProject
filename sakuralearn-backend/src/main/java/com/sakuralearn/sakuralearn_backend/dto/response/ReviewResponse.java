package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Data;

import java.time.ZonedDateTime;
import java.util.UUID;

@Data
@Builder
public class ReviewResponse {
    private UUID id;
    private UUID userId;
    private String username;
    private String userAvatarUrl;
    private Integer rating;
    private String content;
    private ZonedDateTime createdAt;
}
