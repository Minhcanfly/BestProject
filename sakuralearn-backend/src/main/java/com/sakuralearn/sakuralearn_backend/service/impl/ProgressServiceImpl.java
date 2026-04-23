package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockProgressResponse;
import com.sakuralearn.sakuralearn_backend.entity.*;
import com.sakuralearn.sakuralearn_backend.mapper.LessonBlockProgressMapper;
import com.sakuralearn.sakuralearn_backend.repository.*;
import com.sakuralearn.sakuralearn_backend.service.ProgressService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ProgressServiceImpl implements ProgressService {

    private final LessonProgressRepository lessonProgressRepository;
    private final EnrollmentRepository enrollmentRepository;
    private final LessonRepository lessonRepository;
    private final LessonBlockRepository lessonBlockRepository;
    private final LessonBlockProgressRepository lessonBlockProgressRepository;
    private final UserRepository userRepository;
    private final LessonBlockProgressMapper lessonBlockProgressMapper;

    @Override
    @Transactional
    public void updateLastAccessed(UUID userId, UUID lessonId) {
        LessonProgress progress = lessonProgressRepository.findByUserIdAndLessonId(userId, lessonId)
                .orElseGet(() -> {
                    User user = userRepository.findById(userId).orElseThrow();
                    Lesson lesson = lessonRepository.findById(lessonId).orElseThrow();
                    return LessonProgress.builder().user(user).lesson(lesson).build();
                });
        
        progress.setLastAccessedAt(ZonedDateTime.now());
        lessonProgressRepository.save(progress);
        
        // Also update last accessed in enrollment
        enrollmentRepository.findByUserIdAndCourseId(userId, progress.getLesson().getCourse().getId())
                .ifPresent(enrollment -> {
                    enrollment.setLastAccessedAt(ZonedDateTime.now());
                    enrollment.setLastLessonId(lessonId); // We'll add this field
                    enrollmentRepository.save(enrollment);
                });
    }

    @Override
    public double getCourseProgress(UUID userId, UUID courseId) {
        Enrollment enrollment = enrollmentRepository.findByUserIdAndCourseId(userId, courseId)
                .orElseThrow(() -> new RuntimeException("Not enrolled in this course"));
        return enrollment.getProgressPercentage();
    }

    @Override
    @Transactional
    public LessonBlockProgressResponse updateBlockProgress(UUID userId, UUID blockId, LessonBlockProgressRequest request) {
        LessonBlock block = lessonBlockRepository.findById(blockId)
                .orElseThrow(() -> new RuntimeException("Lesson block not found"));
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));

        LessonBlockProgress progress = lessonBlockProgressRepository.findByUserIdAndLessonBlockId(userId, blockId)
                .orElse(LessonBlockProgress.builder()
                        .user(user)
                        .lessonBlock(block)
                        .build());

        if (request.getIsCompleted() != null && request.getIsCompleted()) {
            if (!Boolean.TRUE.equals(progress.getIsCompleted())) {
                progress.setIsCompleted(true);
                progress.setCompletedAt(ZonedDateTime.now());
            }
        }

        if (request.getLastTimestamp() != null) {
            progress.setLastTimestamp(request.getLastTimestamp());
        }

        progress.setLastAccessedAt(ZonedDateTime.now());
        LessonBlockProgress saved = lessonBlockProgressRepository.save(progress);

        // Update overall lesson and course progress
        updateLessonAndCourseProgress(userId, block.getLesson());

        return lessonBlockProgressMapper.toResponse(saved);
    }

    @Override
    public List<LessonBlockProgressResponse> getLessonBlocksProgress(UUID userId, UUID lessonId) {
        return lessonBlockProgressMapper.toResponseList(
                lessonBlockProgressRepository.findByUserIdAndLessonBlockLessonId(userId, lessonId)
        );
    }

    @Override
    @Transactional
    public void completeLesson(UUID userId, UUID lessonId) {
        Lesson lesson = lessonRepository.findById(lessonId)
                .orElseThrow(() -> new RuntimeException("Lesson not found"));
        User user = userRepository.findById(userId).orElseThrow();

        List<LessonBlock> blocks = lessonBlockRepository.findByLessonIdOrderByOrderIndexAsc(lessonId);
        for (LessonBlock block : blocks) {
            LessonBlockProgress progress = lessonBlockProgressRepository.findByUserIdAndLessonBlockId(userId, block.getId())
                    .orElse(LessonBlockProgress.builder().user(user).lessonBlock(block).build());
            
            if (!Boolean.TRUE.equals(progress.getIsCompleted())) {
                progress.setIsCompleted(true);
                progress.setCompletedAt(ZonedDateTime.now());
                lessonBlockProgressRepository.save(progress);
            }
        }

        updateLessonAndCourseProgress(userId, lesson);
    }

    @Override
    public List<UUID> getCompletedLessonIds(UUID userId, UUID courseId) {
        return lessonProgressRepository.findByUserIdAndLessonCourseIdAndIsCompletedTrue(userId, courseId)
                .stream()
                .map(lp -> lp.getLesson().getId())
                .toList();
    }

    private void updateLessonAndCourseProgress(UUID userId, Lesson lesson) {
        // 1. Check/Update Lesson Progress
        List<LessonBlock> blocks = lessonBlockRepository.findByLessonIdOrderByOrderIndexAsc(lesson.getId());
        if (blocks.isEmpty()) return;

        List<LessonBlockProgress> blockProgresses = lessonBlockProgressRepository.findByUserIdAndLessonBlockLessonId(userId, lesson.getId());
        long completedBlocks = blockProgresses.stream().filter(LessonBlockProgress::getIsCompleted).count();

        if (completedBlocks == blocks.size()) {
            LessonProgress lessonProgress = lessonProgressRepository.findByUserIdAndLessonId(userId, lesson.getId())
                    .orElse(LessonProgress.builder().user(userRepository.getReferenceById(userId)).lesson(lesson).build());
            
            if (!Boolean.TRUE.equals(lessonProgress.getIsCompleted())) {
                lessonProgress.setIsCompleted(true);
                lessonProgress.setCompletedAt(ZonedDateTime.now());
                lessonProgressRepository.save(lessonProgress);
            }
        }

        // 2. Update Course Progress
        updateCourseProgress(userId, lesson.getCourse().getId());
    }

    private void updateCourseProgress(UUID userId, UUID courseId) {
        long totalBlocks = lessonBlockRepository.countByLessonCourseId(courseId);
        if (totalBlocks == 0) return;

        long completedBlocks = lessonBlockProgressRepository.countByUserIdAndLessonBlockLessonCourseIdAndIsCompletedTrue(userId, courseId);
        double percentage = (double) completedBlocks / totalBlocks * 100;

        enrollmentRepository.findByUserIdAndCourseId(userId, courseId).ifPresent(enrollment -> {
            enrollment.setProgressPercentage(percentage);
            if (percentage >= 100.0 && enrollment.getCompletedAt() == null) {
                enrollment.setCompletedAt(ZonedDateTime.now());
            }
            enrollmentRepository.save(enrollment);
        });
    }
}
