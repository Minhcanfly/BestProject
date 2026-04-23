package com.sakuralearn.sakuralearn_backend.dto.request;

import lombok.Data;
import java.util.Map;
import java.util.UUID;

@Data
public class QuizSubmissionRequest {
    private Map<UUID, String> answers; // questionId -> userAnswer
    private Integer timeTakenSeconds;
}
