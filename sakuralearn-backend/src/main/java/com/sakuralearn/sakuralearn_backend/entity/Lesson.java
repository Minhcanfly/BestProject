package com.sakuralearn.sakuralearn_backend.entity;

import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.ZonedDateTime;
import java.util.UUID;

@Entity
@Table(name = "lessons")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Lesson {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id")
    private Course course;

    @Column(name = "title_vi", nullable = false)
    private String titleVi;

    @Column(name = "title_ja")
    private String titleJa;

    @Column(name = "title_en")
    private String titleEn;

    @Enumerated(EnumType.STRING)
    @Column(name = "lesson_type", nullable = false, columnDefinition = "lesson_block_type")
    @Builder.Default
    private LessonBlockType lessonType = LessonBlockType.TEXT;

    @Column(name = "order_index", nullable = false)
    private Integer orderIndex;

    @Column(name = "duration_minutes")
    private Integer durationMinutes;

    @Column(name = "is_published")
    @Builder.Default
    private Boolean isPublished = false;

    @Column(name = "is_deleted")
    @Builder.Default
    private Boolean isDeleted = false;

    @CreationTimestamp
    @Column(name = "created_at", updatable = false)
    private ZonedDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at")
    private ZonedDateTime updatedAt;

    @Column(name = "created_by")
    private UUID createdBy;

    @Column(name = "updated_by")
    private UUID updatedBy;
}
