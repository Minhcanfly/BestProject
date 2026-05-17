package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.srs.SrsReviewSchedule;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import org.junit.jupiter.api.Test;

import java.time.Clock;
import java.time.Instant;
import java.time.ZoneOffset;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

class SrsCalculatorServiceTest {

    private final SrsCalculatorService calculator = new SrsCalculatorService(
            Clock.fixed(Instant.parse("2026-05-17T00:00:00Z"), ZoneOffset.UTC)
    );

    @Test
    void firstSuccessfulReviewSchedulesOneDayAndIncrementsRepetition() {
        SrsReviewSchedule result = calculator.calculate(5, 1, 0, 2.5);

        assertThat(result.intervalDays()).isEqualTo(1);
        assertThat(result.repetitions()).isEqualTo(1);
        assertThat(result.easeFactor()).isEqualTo(2.6);
        assertThat(result.dueDate()).isEqualTo(result.reviewedAt().plusDays(1));
    }

    @Test
    void secondSuccessfulReviewSchedulesSixDays() {
        SrsReviewSchedule result = calculator.calculate(4, 1, 1, 2.5);

        assertThat(result.intervalDays()).isEqualTo(6);
        assertThat(result.repetitions()).isEqualTo(2);
        assertThat(result.easeFactor()).isEqualTo(2.5);
    }

    @Test
    void laterSuccessfulReviewUsesPreviousIntervalAndEaseFactor() {
        SrsReviewSchedule result = calculator.calculate(5, 6, 2, 2.5);

        assertThat(result.intervalDays()).isEqualTo(15);
        assertThat(result.repetitions()).isEqualTo(3);
        assertThat(result.easeFactor()).isEqualTo(2.6);
    }

    @Test
    void failedReviewResetsRepetitionsAndKeepsEaseFactorFloor() {
        SrsReviewSchedule result = calculator.calculate(1, 15, 4, 1.31);

        assertThat(result.intervalDays()).isEqualTo(1);
        assertThat(result.repetitions()).isZero();
        assertThat(result.easeFactor()).isEqualTo(1.3);
    }

    @Test
    void invalidQualityIsRejected() {
        assertThatThrownBy(() -> calculator.calculate(0, 1, 0, 2.5))
                .isInstanceOf(BadRequestException.class)
                .hasMessage("SRS quality must be between 1 and 5");
    }
}
