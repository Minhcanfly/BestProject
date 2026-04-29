package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Data;
import java.time.OffsetDateTime;
import java.util.UUID;

@Data
@Builder
public class NotebookFolderResponse {
    private UUID id;
    private String name;
    private String description;
    private int itemCount;
    private OffsetDateTime createdAt;
}
