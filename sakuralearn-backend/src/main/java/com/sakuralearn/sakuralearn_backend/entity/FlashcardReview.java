package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;
import java.util.UUID;

@Entity
@Table(name = "flashcard_reviews")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FlashcardReview {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "flashcard_id", nullable = false)
    private Flashcard flashcard;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "reviewed_at")
    private OffsetDateTime reviewedAt;

    @Column(name = "rating")
    private Integer rating;

    @Column(name = "interval_before")
    private Integer intervalBefore;

    @Column(name = "ease_factor_before")
    private Double easeFactorBefore;

    @Column(name = "new_interval")
    private Integer newInterval;

    @Column(name = "new_ease_factor")
    private Double newEaseFactor;

    @PrePersist
    protected void onCreate() {
        reviewedAt = OffsetDateTime.now();
    }
}
