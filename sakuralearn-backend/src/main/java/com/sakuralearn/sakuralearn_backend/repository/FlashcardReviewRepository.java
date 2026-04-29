package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.FlashcardReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;
import java.util.List;

@Repository
public interface FlashcardReviewRepository extends JpaRepository<FlashcardReview, UUID> {
    List<FlashcardReview> findByUserId(UUID userId);
}
