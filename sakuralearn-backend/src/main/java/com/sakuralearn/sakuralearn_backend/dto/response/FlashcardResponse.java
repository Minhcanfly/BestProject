package com.sakuralearn.sakuralearn_backend.dto.response;

import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import lombok.Builder;
import lombok.Data;
import java.time.OffsetDateTime;
import java.util.UUID;

@Data
@Builder
public class FlashcardResponse {
    private UUID id;
    private ItemType itemType;
    private UUID itemId;
    private String word;     // character, word_ja, or pattern_ja
    private String reading;  // reading
    private String meaning;
    private OffsetDateTime dueDate;
    private Integer intervalDays;
    private Integer reps;
    private Double easeFactor;
    private String note;
}
