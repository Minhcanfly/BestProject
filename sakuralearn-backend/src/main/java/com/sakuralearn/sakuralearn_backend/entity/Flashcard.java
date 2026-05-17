package com.sakuralearn.sakuralearn_backend.entity;

import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;
import java.util.UUID;

@Entity
@Table(name = "flashcards", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"user_id", "item_type", "item_id"})
})
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Flashcard {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Enumerated(EnumType.STRING)
    @Column(name = "item_type", nullable = false)
    private ItemType itemType;

    @Column(name = "item_id", nullable = false)
    private UUID itemId;

    @Column(name = "due_date")
    private OffsetDateTime dueDate;

    @Builder.Default
    @Column(name = "interval_days")
    private Integer intervalDays = 1;

    @Builder.Default
    @Column(name = "ease_factor")
    private Double easeFactor = 2.5;

    @Builder.Default
    @Column(name = "reps")
    private Integer reps = 0;

    @Column(name = "last_reviewed_at")
    private OffsetDateTime lastReviewedAt;

    @PrePersist
    protected void onCreate() {
        if (dueDate == null) {
            dueDate = OffsetDateTime.now();
        }
    }
}
