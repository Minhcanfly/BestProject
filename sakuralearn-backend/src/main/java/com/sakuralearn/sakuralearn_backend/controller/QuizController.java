package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.QuizRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.QuizSubmissionRequest;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.QuizService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/v1/quizzes")
@RequiredArgsConstructor
public class QuizController {

    private final QuizService quizService;

    @PostMapping
    @PreAuthorize("hasAnyRole('TEACHER', 'ADMIN')")
    public ResponseEntity<?> createOrUpdateQuiz(
            @RequestBody QuizRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(quizService.createOrUpdateQuiz(request, userDetails.getId()));
    }

    @GetMapping("/block/{blockId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getQuizByBlock(@PathVariable UUID blockId) {
        return ResponseEntity.ok(quizService.getQuizByBlockId(blockId));
    }

    @PostMapping("/{quizId}/submit")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> submitQuiz(
            @PathVariable UUID quizId,
            @RequestBody QuizSubmissionRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(quizService.submitQuiz(quizId, userDetails.getId(), request));
    }
}
