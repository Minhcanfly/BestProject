package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, UUID> {
    List<Lesson> findByCourseIdAndIsDeletedFalseOrderByOrderIndexAsc(UUID courseId);
    Optional<Lesson> findByIdAndIsDeletedFalse(UUID id);
    Optional<Lesson> findByIdAndCourseIdAndIsDeletedFalse(UUID id, UUID courseId);
    long countByCourseIdAndIsDeletedFalse(UUID courseId);
    int countByCourseIdAndIdInAndIsDeletedFalse(UUID courseId, List<UUID> ids);
    boolean existsByCourseIdAndOrderIndexAndIsDeletedFalse(UUID courseId, Integer orderIndex);
    boolean existsByCourseIdAndOrderIndexAndIdNotAndIsDeletedFalse(UUID courseId, Integer orderIndex, UUID id);
}
