package com.sakuralearn.sakuralearn_backend.dto.request;

import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LessonBlockRequest {
    @NotNull
    private LessonBlockType blockType;
    
    @NotNull(message = "orderIndex is required")
    @Positive(message = "orderIndex must be > 0")
    private Integer orderIndex;
    
    @Size(max = 5000, message = "contentVi must be at most 5000 characters")
    private String contentVi;
    @Size(max = 5000, message = "contentJa must be at most 5000 characters")
    private String contentJa;
    @Size(max = 5000, message = "contentEn must be at most 5000 characters")
    private String contentEn;
    private String videoUrl;
    private String audioUrl;
    private String imageUrl;
    
    // Metadata can be useful for flexible configuration per block type
    private String metadata; 
}
