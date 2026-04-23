package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.PersonalNote;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;
import java.util.List;

@Repository
public interface PersonalNoteRepository extends JpaRepository<PersonalNote, UUID> {
    List<PersonalNote> findByUserIdAndLessonBlockId(UUID userId, UUID lessonBlockId);
    Optional<PersonalNote> findByIdAndUserId(UUID id, UUID userId);
    List<PersonalNote> findByUserIdAndLessonBlockLessonId(UUID userId, UUID lessonId);
}
