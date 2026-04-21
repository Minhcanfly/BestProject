package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonProgress;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.mapper.LessonProgressMapper;
import com.sakuralearn.sakuralearn_backend.repository.EnrollmentRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonProgressRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.ProgressService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ProgressServiceImpl implements ProgressService {

    private final LessonProgressRepository lessonProgressRepository;
    private final EnrollmentRepository enrollmentRepository;
    private final LessonRepository lessonRepository;
    private final UserRepository userRepository;
    private final LessonProgressMapper lessonProgressMapper;

    @Override
    @Transactional
    public LessonProgressResponse completeLesson(UUID userId, UUID lessonId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        Lesson lesson = lessonRepository.findById(lessonId)
                .orElseThrow(() -> new RuntimeException("Lesson not found"));

        LessonProgress progress = lessonProgressRepository.findByUserIdAndLessonId(userId, lessonId)
                .orElse(LessonProgress.builder().user(user).lesson(lesson).build());

        if (!Boolean.TRUE.equals(progress.getIsCompleted())) {
            progress.setIsCompleted(true);
            progress.setCompletedAt(ZonedDateTime.now());
            progress.setLastAccessedAt(ZonedDateTime.now());
            lessonProgressRepository.save(progress);

            // Recalculate Course Progress
            updateCourseProgress(userId, lesson.getCourse().getId());
        }

        return lessonProgressMapper.toResponse(progress);
    }

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
                    enrollmentRepository.save(enrollment);
                });
    }

    @Override
    public double getCourseProgress(UUID userId, UUID courseId) {
        Enrollment enrollment = enrollmentRepository.findByUserIdAndCourseId(userId, courseId)
                .orElseThrow(() -> new RuntimeException("Not enrolled in this course"));
        return enrollment.getProgressPercentage();
    }

    private void updateCourseProgress(UUID userId, UUID courseId) {
        long totalLessons = lessonRepository.findByCourseIdAndIsDeletedFalseOrderByOrderIndexAsc(courseId).size();
        if (totalLessons == 0) return;

        long completedLessons = lessonProgressRepository.countByUserIdAndLessonCourseIdAndIsCompletedTrue(userId, courseId);
        double percentage = (double) completedLessons / totalLessons * 100;

        enrollmentRepository.findByUserIdAndCourseId(userId, courseId).ifPresent(enrollment -> {
            enrollment.setProgressPercentage(percentage);
            if (percentage >= 100.0) {
                enrollment.setCompletedAt(ZonedDateTime.now());
            }
            enrollmentRepository.save(enrollment);
        });
    }
}
