package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import java.util.UUID;

@Data
public class SRSReviewRequest {
    @NotNull
    private UUID flashcardId;

    @Min(1)
    @Max(5)
    private int quality; // 1=Again, 2=Hard, 3=Good, 4=Easy, 5=Very Easy
}
