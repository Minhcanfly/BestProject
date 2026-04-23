package com.sakuralearn.sakuralearn_backend.dto.request;

import lombok.Data;
import java.util.List;

@Data
public class QuizQuestionRequest {
    private String questionText;
    private String options; // JSON string
    private String correctAnswer;
    private String explanation;
    private Integer points;
}
