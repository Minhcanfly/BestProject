package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.SRSReviewRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.FlashcardResponse;
import com.sakuralearn.sakuralearn_backend.entity.Flashcard;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.NotebookService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/v1/srs")
@RequiredArgsConstructor
public class SRSController {

    private final NotebookService notebookService;

    @GetMapping("/due")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<Page<FlashcardResponse>> getDueCards(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size,
            @RequestParam(required = false) UUID folderId,
            @RequestParam(defaultValue = "true") boolean srsMode,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(notebookService.getFlashcardsForReview(userDetails.getId(), folderId, srsMode, pageable));
    }

    @PostMapping("/review")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> processReview(
            @Valid @RequestBody SRSReviewRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.processReview(userDetails.getId(), request.getFlashcardId(), request.getQuality());
        return ResponseEntity.ok().build();
    }
}
