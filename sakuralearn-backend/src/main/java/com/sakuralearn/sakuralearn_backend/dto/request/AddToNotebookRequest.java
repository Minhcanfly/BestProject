package com.sakuralearn.sakuralearn_backend.dto.request;

import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import java.util.UUID;

@Data
public class AddToNotebookRequest {
    @NotNull
    private ItemType itemType;
    @NotNull
    private UUID itemId;
    private String note;
    private UUID folderId;
}
