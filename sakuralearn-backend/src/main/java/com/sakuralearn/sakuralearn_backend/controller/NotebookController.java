package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.AddToNotebookRequest;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.NotebookService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import java.util.UUID;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/notebook")
@RequiredArgsConstructor
public class NotebookController {

    private final NotebookService notebookService;

    @PostMapping("/add")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> addToNotebook(
            @Valid @RequestBody AddToNotebookRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.addToNotebook(userDetails.getId(), request.getItemType(), request.getItemId(), request.getNote(), request.getFolderId());
        return ResponseEntity.ok().build();
    }

    @PostMapping("/custom/add")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> addCustomItem(
            @RequestBody java.util.Map<String, String> body,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.addCustomItem(
            userDetails.getId(), 
            UUID.fromString(body.get("folderId")),
            body.get("word"),
            body.get("reading"),
            body.get("meaning"),
            body.get("note")
        );
        return ResponseEntity.ok().build();
    }

    @GetMapping("/folders")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getFolders(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(notebookService.getFolders(userDetails.getId()));
    }

    @GetMapping("/srs-stats")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getSrsStats(@AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(notebookService.getSrsStats(userDetails.getId()));
    }

    @GetMapping("/folders/{folderId}/items")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getFolderItems(@PathVariable UUID folderId) {
        return ResponseEntity.ok(notebookService.getFolderItems(folderId));
    }

    @PostMapping("/folders/create")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> createFolder(
            @Valid @RequestBody com.sakuralearn.sakuralearn_backend.dto.request.NotebookFolderRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        return ResponseEntity.ok(notebookService.createFolder(userDetails.getId(), request.getName(), request.getDescription()));
    }

    @PutMapping("/folders/{folderId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> updateFolder(
            @PathVariable UUID folderId,
            @Valid @RequestBody com.sakuralearn.sakuralearn_backend.dto.request.NotebookFolderRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.updateFolder(userDetails.getId(), folderId, request.getName(), request.getDescription());
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/folders/{folderId}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> deleteFolder(
            @PathVariable UUID folderId,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.deleteFolder(userDetails.getId(), folderId);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/items/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> deleteItem(
            @PathVariable UUID id,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.deleteNotebookItem(userDetails.getId(), id);
        return ResponseEntity.ok().build();
    }

    @PutMapping("/items/{id}/note")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> updateNote(
            @PathVariable UUID id,
            @RequestBody java.util.Map<String, String> body,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.updateItemNote(userDetails.getId(), id, body.get("note"));
        return ResponseEntity.ok().build();
    }


    @PostMapping("/srs/add")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> addToSRS(
            @Valid @RequestBody AddToNotebookRequest request,
            @AuthenticationPrincipal UserDetailsImpl userDetails) {
        notebookService.addToSRS(userDetails.getId(), request.getItemType(), request.getItemId());
        return ResponseEntity.ok().build();
    }
}
