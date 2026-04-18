package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;

@Getter
@Setter
public class CourseRequest {
    @NotBlank
    private String titleVi;
    private String titleJa;
    private String titleEn;
    private String descriptionVi;
    private String jlptLevel;
    private BigDecimal price;
    private Integer durationMinutes;
}
