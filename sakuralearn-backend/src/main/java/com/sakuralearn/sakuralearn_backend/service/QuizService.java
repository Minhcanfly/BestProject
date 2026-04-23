package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.QuizRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.QuizSubmissionRequest;
import com.sakuralearn.sakuralearn_backend.entity.Quiz;
import com.sakuralearn.sakuralearn_backend.entity.QuizAttempt;

import java.util.UUID;

public interface QuizService {
    Quiz createOrUpdateQuiz(QuizRequest request, UUID creatorId);
    Quiz getQuizByBlockId(UUID blockId);
    QuizAttempt submitQuiz(UUID quizId, UUID userId, QuizSubmissionRequest request);
}
