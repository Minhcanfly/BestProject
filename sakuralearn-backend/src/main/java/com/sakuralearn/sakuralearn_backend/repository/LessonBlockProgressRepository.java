package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.LessonBlockProgress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;
import java.util.List;

@Repository
public interface LessonBlockProgressRepository extends JpaRepository<LessonBlockProgress, UUID> {
    Optional<LessonBlockProgress> findByUserIdAndLessonBlockIdAndLessonBlockIsDeletedFalse(UUID userId, UUID lessonBlockId);
    List<LessonBlockProgress> findByUserIdAndLessonBlockLessonIdAndLessonBlockIsDeletedFalse(UUID userId, UUID lessonId);
    long countByUserIdAndLessonBlockLessonCourseIdAndIsCompletedTrueAndLessonBlockIsDeletedFalse(UUID userId, UUID courseId);
}
