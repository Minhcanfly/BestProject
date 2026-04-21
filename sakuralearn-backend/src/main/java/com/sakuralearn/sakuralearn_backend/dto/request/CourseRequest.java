package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.PositiveOrZero;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;

@Getter
@Setter
public class CourseRequest {
    @NotBlank(message = "titleVi is required")
    @Size(max = 255, message = "titleVi must be at most 255 characters")
    private String titleVi;

    @Size(max = 255, message = "titleJa must be at most 255 characters")
    private String titleJa;

    @Size(max = 255, message = "titleEn must be at most 255 characters")
    private String titleEn;

    @Size(max = 2000, message = "descriptionVi must be at most 2000 characters")
    private String descriptionVi;

    @Size(max = 2000, message = "descriptionJa must be at most 2000 characters")
    private String descriptionJa;

    @Size(max = 2000, message = "descriptionEn must be at most 2000 characters")
    private String descriptionEn;

    @Pattern(regexp = "N[1-5]", message = "jlptLevel must be one of N1, N2, N3, N4, N5")
    private String jlptLevel;

    @NotNull(message = "price is required")
    @PositiveOrZero(message = "price must be >= 0")
    private BigDecimal price;

    @PositiveOrZero(message = "durationMinutes must be >= 0")
    private Integer durationMinutes;
}
