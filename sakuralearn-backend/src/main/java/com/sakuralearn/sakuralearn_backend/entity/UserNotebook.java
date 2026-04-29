package com.sakuralearn.sakuralearn_backend.entity;

import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import java.time.OffsetDateTime;
import java.util.UUID;

@Entity
@Table(name = "user_notebook")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserNotebook {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "folder_id")
    private UUID folderId;

    @Enumerated(EnumType.STRING)
    @Column(name = "item_type", nullable = false)
    private ItemType itemType;

    @Column(name = "item_id")
    private UUID itemId;

    @Column(name = "custom_word")
    private String customWord;

    @Column(name = "custom_reading")
    private String customReading;

    @Column(name = "custom_meaning")
    private String customMeaning;

    @Column(columnDefinition = "TEXT")
    private String note;

    @CreationTimestamp
    @Column(name = "added_at", updatable = false)
    private OffsetDateTime addedAt;
}
