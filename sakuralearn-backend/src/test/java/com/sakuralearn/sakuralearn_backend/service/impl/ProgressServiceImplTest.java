package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockProgressResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlockProgress;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import com.sakuralearn.sakuralearn_backend.mapper.LessonBlockProgressMapper;
import com.sakuralearn.sakuralearn_backend.repository.EnrollmentRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockProgressRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonProgressRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class ProgressServiceImplTest {

    @Mock private LessonProgressRepository lessonProgressRepository;
    @Mock private EnrollmentRepository enrollmentRepository;
    @Mock private LessonRepository lessonRepository;
    @Mock private LessonBlockRepository lessonBlockRepository;
    @Mock private LessonBlockProgressRepository lessonBlockProgressRepository;
    @Mock private UserRepository userRepository;
    @Mock private LessonBlockProgressMapper lessonBlockProgressMapper;

    @InjectMocks
    private ProgressServiceImpl progressService;

    @Test
    void updateBlockProgressRejectsUsersWhoAreNotEnrolled() {
        UUID userId = UUID.randomUUID();
        UUID blockId = UUID.randomUUID();
        LessonBlock block = block(blockId, UUID.randomUUID(), UUID.randomUUID());

        when(lessonBlockRepository.findById(blockId)).thenReturn(Optional.of(block));
        when(enrollmentRepository.existsByUserIdAndCourseId(userId, block.getLesson().getCourse().getId())).thenReturn(false);

        assertThatThrownBy(() -> progressService.updateBlockProgress(userId, blockId, LessonBlockProgressRequest.builder().isCompleted(true).build()))
                .isInstanceOf(BadRequestException.class);

        verify(lessonBlockProgressRepository, never()).save(any());
    }

    @Test
    void updateBlockProgressStoresResumeTimestampAndRecalculatesCourseProgress() {
        UUID userId = UUID.randomUUID();
        UUID courseId = UUID.randomUUID();
        UUID lessonId = UUID.randomUUID();
        UUID blockId = UUID.randomUUID();
        User user = User.builder().id(userId).build();
        LessonBlock block = block(blockId, lessonId, courseId);
        Enrollment enrollment = Enrollment.builder()
                .user(user)
                .course(block.getLesson().getCourse())
                .progressPercentage(0.0)
                .build();
        LessonBlockProgress completedProgress = LessonBlockProgress.builder()
                .user(user)
                .lessonBlock(block)
                .isCompleted(true)
                .lastTimestamp(92.0)
                .build();
        LessonBlockProgressResponse response = LessonBlockProgressResponse.builder()
                .lessonBlockId(blockId)
                .isCompleted(true)
                .lastTimestamp(92.0)
                .build();

        when(lessonBlockRepository.findById(blockId)).thenReturn(Optional.of(block));
        when(enrollmentRepository.existsByUserIdAndCourseId(userId, courseId)).thenReturn(true);
        when(userRepository.findById(userId)).thenReturn(Optional.of(user));
        when(lessonBlockProgressRepository.findByUserIdAndLessonBlockIdAndLessonBlockIsDeletedFalse(userId, blockId))
                .thenReturn(Optional.empty());
        when(lessonBlockProgressRepository.save(any(LessonBlockProgress.class))).thenAnswer(invocation -> invocation.getArgument(0));
        when(lessonBlockRepository.findByLessonIdAndIsDeletedFalseOrderByOrderIndexAsc(lessonId)).thenReturn(List.of(block));
        when(lessonBlockProgressRepository.findByUserIdAndLessonBlockLessonIdAndLessonBlockIsDeletedFalse(userId, lessonId))
                .thenReturn(List.of(completedProgress));
        when(lessonBlockRepository.countByLessonCourseIdAndIsDeletedFalse(courseId)).thenReturn(1L);
        when(lessonBlockProgressRepository.countByUserIdAndLessonBlockLessonCourseIdAndIsCompletedTrueAndLessonBlockIsDeletedFalse(userId, courseId))
                .thenReturn(1L);
        when(enrollmentRepository.findByUserIdAndCourseId(userId, courseId)).thenReturn(Optional.of(enrollment));
        when(lessonBlockProgressMapper.toResponse(any(LessonBlockProgress.class))).thenReturn(response);

        LessonBlockProgressResponse result = progressService.updateBlockProgress(
                userId,
                blockId,
                LessonBlockProgressRequest.builder().isCompleted(true).lastTimestamp(92.0).build()
        );

        assertThat(result).isSameAs(response);
        assertThat(enrollment.getProgressPercentage()).isEqualTo(100.0);
        assertThat(enrollment.getCompletedAt()).isNotNull();
    }

    private LessonBlock block(UUID blockId, UUID lessonId, UUID courseId) {
        Course course = Course.builder()
                .id(courseId)
                .titleVi("Course")
                .build();
        Lesson lesson = Lesson.builder()
                .id(lessonId)
                .course(course)
                .titleVi("Lesson")
                .orderIndex(1)
                .build();
        return LessonBlock.builder()
                .id(blockId)
                .lesson(lesson)
                .orderIndex(1)
                .isDeleted(false)
                .build();
    }
}
