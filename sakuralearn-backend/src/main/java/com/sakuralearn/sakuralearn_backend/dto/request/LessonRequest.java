package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LessonRequest {
    @NotBlank(message = "titleVi is required")
    @Size(max = 255, message = "titleVi must be at most 255 characters")
    private String titleVi;

    @Size(max = 255, message = "titleJa must be at most 255 characters")
    private String titleJa;

    @Size(max = 255, message = "titleEn must be at most 255 characters")
    private String titleEn;

    @NotNull(message = "orderIndex is required")
    @Positive(message = "orderIndex must be > 0")
    private Integer orderIndex;

    @NotBlank(message = "lessonType is required")
    private String lessonType;

    @PositiveOrZero(message = "durationMinutes must be >= 0")
    private Integer durationMinutes;
}
