package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.*;

import java.time.ZonedDateTime;
import java.util.UUID;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EnrollmentResponse {
    private UUID id;
    private UUID courseId;
    private String courseTitle;
    private Double progressPercentage;
    private ZonedDateTime enrolledAt;
    private ZonedDateTime completedAt;
    private ZonedDateTime lastAccessedAt;
}
