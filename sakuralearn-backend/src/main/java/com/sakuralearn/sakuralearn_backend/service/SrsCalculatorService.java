package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.srs.SrsReviewSchedule;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import org.springframework.stereotype.Service;

import java.time.Clock;
import java.time.OffsetDateTime;

@Service
public class SrsCalculatorService {

    private static final double MIN_EASE_FACTOR = 1.3;
    private static final int FIRST_SUCCESS_INTERVAL_DAYS = 1;
    private static final int SECOND_SUCCESS_INTERVAL_DAYS = 6;

    private final Clock clock;

    public SrsCalculatorService() {
        this(Clock.systemDefaultZone());
    }

    SrsCalculatorService(Clock clock) {
        this.clock = clock;
    }

    public SrsReviewSchedule calculate(int quality, int currentIntervalDays, int currentRepetitions, double currentEaseFactor) {
        if (quality < 1 || quality > 5) {
            throw new BadRequestException("SRS quality must be between 1 and 5");
        }

        double nextEaseFactor = calculateEaseFactor(quality, currentEaseFactor);
        int nextRepetitions = calculateRepetitions(quality, currentRepetitions);
        int nextIntervalDays = calculateIntervalDays(quality, currentIntervalDays, currentRepetitions, currentEaseFactor);
        OffsetDateTime reviewedAt = OffsetDateTime.now(clock);

        return new SrsReviewSchedule(
                nextIntervalDays,
                nextRepetitions,
                nextEaseFactor,
                reviewedAt.plusDays(nextIntervalDays),
                reviewedAt
        );
    }

    private double calculateEaseFactor(int quality, double currentEaseFactor) {
        double qualityPenalty = 5 - quality;
        double nextEaseFactor = currentEaseFactor + (0.1 - qualityPenalty * (0.08 + qualityPenalty * 0.02));
        return Math.max(MIN_EASE_FACTOR, nextEaseFactor);
    }

    private int calculateRepetitions(int quality, int currentRepetitions) {
        if (quality < 3) {
            return 0;
        }
        return currentRepetitions + 1;
    }

    private int calculateIntervalDays(int quality, int currentIntervalDays, int currentRepetitions, double currentEaseFactor) {
        if (quality < 3) {
            return FIRST_SUCCESS_INTERVAL_DAYS;
        }
        if (currentRepetitions == 0) {
            return FIRST_SUCCESS_INTERVAL_DAYS;
        }
        if (currentRepetitions == 1) {
            return SECOND_SUCCESS_INTERVAL_DAYS;
        }
        return (int) Math.round(currentIntervalDays * currentEaseFactor);
    }
}
