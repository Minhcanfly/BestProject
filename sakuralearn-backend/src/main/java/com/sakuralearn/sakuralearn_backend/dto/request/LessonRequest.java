package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LessonRequest {
    @NotBlank
    private String titleVi;
    private String titleJa;
    private String titleEn;
    private Integer orderIndex;
    private String lessonType;
    private Integer durationMinutes;
}
