package com.sakuralearn.sakuralearn_backend.dto.request;

import com.sakuralearn.sakuralearn_backend.entity.enums.QuizType;
import lombok.Data;
import java.util.List;
import java.util.UUID;

@Data
public class QuizRequest {
    private String title;
    private QuizType type;
    private Integer timeLimitSeconds;
    private List<QuizQuestionRequest> questions;
    private UUID lessonId;
    private UUID lessonBlockId;
}
