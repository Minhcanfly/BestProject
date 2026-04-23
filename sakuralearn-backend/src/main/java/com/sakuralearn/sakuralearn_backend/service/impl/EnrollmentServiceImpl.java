package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.response.EnrollmentResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.mapper.EnrollmentMapper;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.EnrollmentRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.EnrollmentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class EnrollmentServiceImpl implements EnrollmentService {

    private final EnrollmentRepository enrollmentRepository;
    private final CourseRepository courseRepository;
    private final UserRepository userRepository;
    private final LessonRepository lessonRepository;
    private final EnrollmentMapper enrollmentMapper;

    @Override
    @Transactional
    public EnrollmentResponse enrollInCourse(UUID userId, UUID courseId) {
        if (isEnrolled(userId, courseId)) {
            throw new RuntimeException("Bạn đã tham gia khóa học này rồi.");
        }

        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        Course course = courseRepository.findByIdAndIsDeletedFalse(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        Enrollment enrollment = Enrollment.builder()
                .user(user)
                .course(course)
                .progressPercentage(0.0)
                .enrolledAt(ZonedDateTime.now())
                .build();

        return enrollmentMapper.toResponse(enrollmentRepository.save(enrollment));
    }

    @Override
    public List<EnrollmentResponse> getMyEnrollments(UUID userId) {
        List<Enrollment> enrollments = enrollmentRepository.findByUserId(userId);
        return enrollments.stream().map(enrollment -> {
            EnrollmentResponse response = enrollmentMapper.toResponse(enrollment);
            // Manually populate lessonCount
            response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(enrollment.getCourse().getId()));
            return response;
        }).toList();
    }

    @Override
    public boolean isEnrolled(UUID userId, UUID courseId) {
        return enrollmentRepository.existsByUserIdAndCourseId(userId, courseId);
    }

    @Override
    public EnrollmentResponse getEnrollmentStatus(UUID userId, UUID courseId) {
        return enrollmentRepository.findByUserIdAndCourseId(userId, courseId)
                .map(enrollment -> {
                    EnrollmentResponse response = enrollmentMapper.toResponse(enrollment);
                    response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(courseId));
                    return response;
                })
                .orElse(null);
    }

    @Override
    @Transactional
    public void unenroll(UUID userId, UUID courseId) {
        Enrollment enrollment = enrollmentRepository.findByUserIdAndCourseId(userId, courseId)
                .orElseThrow(() -> new RuntimeException("Enrollment not found"));
        enrollmentRepository.delete(enrollment);
    }
}
