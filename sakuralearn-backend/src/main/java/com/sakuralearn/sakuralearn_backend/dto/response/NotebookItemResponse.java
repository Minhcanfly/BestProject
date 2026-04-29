package com.sakuralearn.sakuralearn_backend.dto.response;

import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import lombok.Builder;
import lombok.Data;
import java.time.OffsetDateTime;
import java.util.UUID;

@Data
@Builder
public class NotebookItemResponse {
    private UUID id;
    private ItemType itemType;
    private UUID itemId;
    private String word;      // Chữ Hán hoặc từ vựng
    private String reading;   // Cách đọc (furigana/kana)
    private String meaning;   // Nghĩa tiếng Việt
    private String note;
    private OffsetDateTime addedAt;
}
