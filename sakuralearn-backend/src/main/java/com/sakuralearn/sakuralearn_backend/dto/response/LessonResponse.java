package com.sakuralearn.sakuralearn_backend.dto.response;

import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import lombok.*;

import java.util.UUID;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LessonResponse {
    private UUID id;
    private UUID courseId;
    private String titleVi;
    private String titleJa;
    private String titleEn;
    private LessonBlockType lessonType;
    private Integer orderIndex;
    private Integer durationMinutes;
    private Boolean isPublished;
}
