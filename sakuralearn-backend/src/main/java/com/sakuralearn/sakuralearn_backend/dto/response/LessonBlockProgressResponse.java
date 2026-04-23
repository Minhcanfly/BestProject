package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.ZonedDateTime;
import java.util.UUID;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LessonBlockProgressResponse {
    private UUID id;
    private UUID userId;
    private UUID lessonBlockId;
    private Boolean isCompleted;
    private ZonedDateTime completedAt;
    private ZonedDateTime lastAccessedAt;
    private Double lastTimestamp;
}
