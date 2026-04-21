package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockRequest;
import com.sakuralearn.sakuralearn_backend.service.LessonBlockService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/lessons/{lessonId}/blocks")
@RequiredArgsConstructor
public class LessonBlockController {

    private final LessonBlockService lessonBlockService;

    @GetMapping
    public ResponseEntity<?> getBlocks(@PathVariable UUID lessonId) {
        return ResponseEntity.ok(lessonBlockService.getBlocksByLesson(lessonId));
    }

    @PostMapping
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> createBlock(@PathVariable UUID lessonId, @Valid @RequestBody LessonBlockRequest request) {
        return ResponseEntity.ok(lessonBlockService.createBlock(lessonId, request));
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> updateBlock(
            @PathVariable UUID lessonId,
            @PathVariable UUID id,
            @Valid @RequestBody LessonBlockRequest request) {
        return ResponseEntity.ok(lessonBlockService.updateBlock(lessonId, id, request));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> deleteBlock(@PathVariable UUID lessonId, @PathVariable UUID id) {
        lessonBlockService.deleteBlock(lessonId, id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/reorder")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> reorderBlocks(@PathVariable UUID lessonId, @RequestBody List<UUID> blockIds) {
        lessonBlockService.reorderBlocks(lessonId, blockIds);
        return ResponseEntity.ok().build();
    }
}
