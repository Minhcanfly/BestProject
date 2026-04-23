package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.PersonalNoteRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.PersonalNoteResponse;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.entity.PersonalNote;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.mapper.PersonalNoteMapper;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockRepository;
import com.sakuralearn.sakuralearn_backend.repository.PersonalNoteRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.NoteService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class NoteServiceImpl implements NoteService {

    private final PersonalNoteRepository personalNoteRepository;
    private final LessonBlockRepository lessonBlockRepository;
    private final UserRepository userRepository;
    private final PersonalNoteMapper personalNoteMapper;

    @Override
    @Transactional
    public PersonalNoteResponse createNote(UUID userId, PersonalNoteRequest request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        LessonBlock block = lessonBlockRepository.findById(request.getLessonBlockId())
                .orElseThrow(() -> new RuntimeException("Lesson block not found"));

        PersonalNote note = PersonalNote.builder()
                .user(user)
                .lessonBlock(block)
                .content(request.getContent())
                .build();

        return personalNoteMapper.toResponse(personalNoteRepository.save(note));
    }

    @Override
    @Transactional
    public PersonalNoteResponse updateNote(UUID userId, UUID noteId, String content) {
        PersonalNote note = personalNoteRepository.findByIdAndUserId(noteId, userId)
                .orElseThrow(() -> new RuntimeException("Note not found or you don't have permission"));
        
        note.setContent(content);
        return personalNoteMapper.toResponse(personalNoteRepository.save(note));
    }

    @Override
    @Transactional
    public void deleteNote(UUID userId, UUID noteId) {
        PersonalNote note = personalNoteRepository.findByIdAndUserId(noteId, userId)
                .orElseThrow(() -> new RuntimeException("Note not found or you don't have permission"));
        personalNoteRepository.delete(note);
    }

    @Override
    public List<PersonalNoteResponse> getNotesByBlock(UUID userId, UUID blockId) {
        return personalNoteMapper.toResponseList(
                personalNoteRepository.findByUserIdAndLessonBlockId(userId, blockId)
        );
    }

    @Override
    public List<PersonalNoteResponse> getNotesByLesson(UUID userId, UUID lessonId) {
        return personalNoteMapper.toResponseList(
                personalNoteRepository.findByUserIdAndLessonBlockLessonId(userId, lessonId)
        );
    }
}
