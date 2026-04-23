package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.PersonalNoteRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.PersonalNoteResponse;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.NoteService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/notes")
@RequiredArgsConstructor
public class NoteController {

    private final NoteService noteService;

    @PostMapping
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<PersonalNoteResponse> createNote(
            @Valid @RequestBody PersonalNoteRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(noteService.createNote(userDetails.getId(), request));
    }

    @PutMapping("/{noteId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<PersonalNoteResponse> updateNote(
            @PathVariable UUID noteId,
            @RequestBody String content,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(noteService.updateNote(userDetails.getId(), noteId, content));
    }

    @DeleteMapping("/{noteId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> deleteNote(
            @PathVariable UUID noteId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        noteService.deleteNote(userDetails.getId(), noteId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/block/{blockId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<PersonalNoteResponse>> getNotesByBlock(
            @PathVariable UUID blockId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(noteService.getNotesByBlock(userDetails.getId(), blockId));
    }

    @GetMapping("/lesson/{lessonId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<PersonalNoteResponse>> getNotesByLesson(
            @PathVariable UUID lessonId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(noteService.getNotesByLesson(userDetails.getId(), lessonId));
    }
}
