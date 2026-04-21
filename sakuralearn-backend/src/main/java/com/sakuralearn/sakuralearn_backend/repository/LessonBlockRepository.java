package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface LessonBlockRepository extends JpaRepository<LessonBlock, UUID> {
    List<LessonBlock> findByLessonIdOrderByOrderIndexAsc(UUID lessonId);
    Optional<LessonBlock> findByIdAndLessonId(UUID id, UUID lessonId);
    int countByLessonIdAndIdIn(UUID lessonId, List<UUID> ids);
    boolean existsByLessonIdAndOrderIndex(UUID lessonId, Integer orderIndex);
    boolean existsByLessonIdAndOrderIndexAndIdNot(UUID lessonId, Integer orderIndex, UUID id);
}
