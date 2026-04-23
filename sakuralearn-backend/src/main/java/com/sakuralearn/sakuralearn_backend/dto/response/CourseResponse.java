package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.*;

import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.UUID;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CourseResponse {
    private UUID id;
    private String titleVi;
    private String titleJa;
    private String titleEn;
    private String descriptionVi;
    private String descriptionJa;
    private String descriptionEn;
    private String jlptLevel;
    private BigDecimal price;
    private Integer durationMinutes;
    private String teacherName;
    private Boolean isPublished;
    private String thumbnailUrl;
    private Integer lessonCount;
    private ZonedDateTime createdAt;
}
