package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.ZonedDateTime;
import java.util.UUID;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PersonalNoteResponse {
    private UUID id;
    private UUID userId;
    private UUID lessonBlockId;
    private String content;
    private ZonedDateTime createdAt;
    private ZonedDateTime updatedAt;
}
