package com.sakuralearn.sakuralearn_backend.dto.response;

import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import lombok.*;

import java.util.UUID;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LessonBlockResponse {
    private UUID id;
    private UUID lessonId;
    private LessonBlockType blockType;
    private Integer orderIndex;
    private String contentVi;
    private String contentJa;
    private String contentEn;
    private String videoUrl;
    private String audioUrl;
    private String imageUrl;
    private String metadata;
}
