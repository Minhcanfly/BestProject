package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.FlashcardReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;
import java.util.List;

@Repository
public interface FlashcardReviewRepository extends JpaRepository<FlashcardReview, UUID> {
    List<FlashcardReview> findByUserId(UUID userId);

    @org.springframework.data.jpa.repository.Query("SELECT COUNT(r) FROM FlashcardReview r WHERE r.user.id = :userId AND r.reviewedAt >= :start")
    long countByUserIdAndReviewedAtAfter(UUID userId, java.time.OffsetDateTime start);
}
