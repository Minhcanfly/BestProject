package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.PersonalNoteRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.PersonalNoteResponse;

import java.util.List;
import java.util.UUID;

public interface NoteService {
    PersonalNoteResponse createNote(UUID userId, PersonalNoteRequest request);
    PersonalNoteResponse updateNote(UUID userId, UUID noteId, String content);
    void deleteNote(UUID userId, UUID noteId);
    List<PersonalNoteResponse> getNotesByBlock(UUID userId, UUID blockId);
    List<PersonalNoteResponse> getNotesByLesson(UUID userId, UUID lessonId);
}
