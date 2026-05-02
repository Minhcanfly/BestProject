package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface LessonBlockRepository extends JpaRepository<LessonBlock, UUID> {
    List<LessonBlock> findByLessonIdAndIsDeletedFalseOrderByOrderIndexAsc(UUID lessonId);
    Optional<LessonBlock> findByIdAndLessonIdAndIsDeletedFalse(UUID id, UUID lessonId);
    int countByLessonIdAndIdInAndIsDeletedFalse(UUID lessonId, List<UUID> ids);
    boolean existsByLessonIdAndOrderIndexAndIsDeletedFalse(UUID lessonId, Integer orderIndex);
    boolean existsByLessonIdAndOrderIndexAndIdNotAndIsDeletedFalse(UUID lessonId, Integer orderIndex, UUID id);
    
    long countByLessonCourseIdAndIsDeletedFalse(UUID courseId);

    @org.springframework.data.jpa.repository.Modifying
    @org.springframework.data.jpa.repository.Query("UPDATE LessonBlock b SET b.isDeleted = true WHERE b.lesson.id = :lessonId")
    void softDeleteByLessonId(UUID lessonId);

    @org.springframework.data.jpa.repository.Modifying
    @org.springframework.data.jpa.repository.Query("UPDATE LessonBlock b SET b.isDeleted = true WHERE b.lesson.course.id = :courseId")
    void softDeleteByCourseId(UUID courseId);
}
