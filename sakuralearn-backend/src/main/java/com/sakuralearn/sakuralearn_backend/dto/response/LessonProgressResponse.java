package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.*;

import java.time.ZonedDateTime;
import java.util.UUID;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LessonProgressResponse {
    private UUID id;
    private UUID lessonId;
    private Boolean isCompleted;
    private ZonedDateTime completedAt;
    private ZonedDateTime lastAccessedAt;
    private Double score;
}
