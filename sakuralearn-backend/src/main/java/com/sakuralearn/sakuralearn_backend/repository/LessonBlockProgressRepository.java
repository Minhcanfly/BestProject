package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.LessonBlockProgress;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;
import java.util.List;

@Repository
public interface LessonBlockProgressRepository extends JpaRepository<LessonBlockProgress, UUID> {
    Optional<LessonBlockProgress> findByUserIdAndLessonBlockId(UUID userId, UUID lessonBlockId);
    List<LessonBlockProgress> findByUserIdAndLessonBlockLessonId(UUID userId, UUID lessonId);
    long countByUserIdAndLessonBlockLessonCourseIdAndIsCompletedTrue(UUID userId, UUID courseId);
}
