package com.sakuralearn.sakuralearn_backend.dto.srs;

import java.time.OffsetDateTime;

public record SrsReviewSchedule(
        int intervalDays,
        int repetitions,
        double easeFactor,
        OffsetDateTime dueDate,
        OffsetDateTime reviewedAt
) {
}
