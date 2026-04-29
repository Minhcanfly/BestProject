package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.Flashcard;
import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.time.OffsetDateTime;
import java.util.UUID;
import java.util.Optional;

@Repository
public interface FlashcardRepository extends JpaRepository<Flashcard, UUID> {
    Page<Flashcard> findByUserId(UUID userId, Pageable pageable);
    Page<Flashcard> findByUserIdAndDueDateBefore(UUID userId, OffsetDateTime now, Pageable pageable);
    java.util.List<Flashcard> findAllByUserId(UUID userId);
    Optional<Flashcard> findByUserIdAndItemTypeAndItemId(UUID userId, ItemType itemType, UUID itemId);
    boolean existsByUserIdAndItemTypeAndItemId(UUID userId, ItemType itemType, UUID itemId);
    
    // For SRS Stats
    int countByUserIdAndRepsLessThanEqual(UUID userId, int maxReps);
    int countByUserIdAndRepsBetween(UUID userId, int minReps, int maxReps);
    int countByUserIdAndRepsGreaterThanEqual(UUID userId, int minReps);
}
