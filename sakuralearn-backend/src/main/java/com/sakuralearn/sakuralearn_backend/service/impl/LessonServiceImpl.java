package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import com.sakuralearn.sakuralearn_backend.exception.ConflictException;
import com.sakuralearn.sakuralearn_backend.exception.ResourceNotFoundException;
import com.sakuralearn.sakuralearn_backend.mapper.LessonMapper;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.service.FileStorageService;
import com.sakuralearn.sakuralearn_backend.service.LessonService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class LessonServiceImpl implements LessonService {

    private final LessonRepository lessonRepository;
    private final CourseRepository courseRepository;
    private final LessonBlockRepository lessonBlockRepository;
    private final FileStorageService fileStorageService;
    private final com.sakuralearn.sakuralearn_backend.service.ProgressService progressService;
    private final LessonMapper lessonMapper;

    @Override
    @Transactional
    public LessonResponse createLesson(UUID courseId, LessonRequest request, MultipartFile video) {
        Course course = findCourse(courseId);
        validateLessonOrderForCreate(courseId, request.getOrderIndex());
        LessonBlockType lessonType = parseLessonType(request.getLessonType());

        Lesson lesson = Lesson.builder()
                .course(course)
                .titleVi(request.getTitleVi())
                .titleJa(request.getTitleJa())
                .titleEn(request.getTitleEn())
                .orderIndex(request.getOrderIndex())
                .lessonType(lessonType)
                .durationMinutes(request.getDurationMinutes())
                .isDeleted(false)
                .build();

        Lesson savedLesson = lessonRepository.save(lesson);

        // Create initial block if needed (preserving previous behavior for MVP)
        LessonBlock block = LessonBlock.builder()
                .lesson(savedLesson)
                .blockType(lessonType)
                .orderIndex(1)
                .contentVi(request.getTitleVi())
                .build();

        if (video != null && !video.isEmpty()) {
            String videoUrl = fileStorageService.uploadFile(video, "courses/" + courseId + "/lessons");
            block.setVideoUrl(videoUrl);
        }

        lessonBlockRepository.save(block);

        return lessonMapper.toResponse(savedLesson);
    }

    @Override
    @Transactional
    public LessonResponse updateLesson(UUID courseId, UUID lessonId, LessonRequest request, MultipartFile video) {
        findCourse(courseId);
        Lesson lesson = findLessonInCourse(courseId, lessonId);
        validateLessonOrderForUpdate(courseId, lessonId, request.getOrderIndex());
        LessonBlockType lessonType = parseLessonType(request.getLessonType());

        lesson.setTitleVi(request.getTitleVi());
        lesson.setTitleJa(request.getTitleJa());
        lesson.setTitleEn(request.getTitleEn());
        lesson.setOrderIndex(request.getOrderIndex());
        lesson.setLessonType(lessonType);
        lesson.setDurationMinutes(request.getDurationMinutes());

        if (video != null && !video.isEmpty()) {
            String videoUrl = fileStorageService.uploadFile(video, "courses/" + lesson.getCourse().getId() + "/lessons");
            // Placeholder: update video URL in relevant block
        }

        return lessonMapper.toResponse(lessonRepository.save(lesson));
    }

    @Override
    @Transactional
    public void deleteLesson(UUID courseId, UUID lessonId) {
        findCourse(courseId);
        Lesson lesson = findLessonInCourse(courseId, lessonId);
        lesson.setIsDeleted(true);
        lessonRepository.save(lesson);

        // Also soft delete all blocks in this lesson
        lessonBlockRepository.softDeleteByLessonId(lessonId);

        // Recalculate progress for all users in the course
        progressService.recalculateCourseProgressForAllUsers(courseId);
    }

    @Override
    public List<LessonResponse> getLessonsByCourse(UUID courseId) {
        findCourse(courseId);
        List<Lesson> lessons = lessonRepository.findByCourseIdAndIsDeletedFalseOrderByOrderIndexAsc(courseId);
        return lessonMapper.toResponseList(lessons);
    }

    @Override
    @Transactional
    public void reorderLessons(UUID courseId, List<UUID> lessonIds) {
        findCourse(courseId);
        if (lessonIds == null || lessonIds.isEmpty()) {
            throw new BadRequestException("Lesson order cannot be empty");
        }
        int existingCount = lessonRepository.countByCourseIdAndIdInAndIsDeletedFalse(courseId, lessonIds);
        if (existingCount != lessonIds.size()) {
            throw new BadRequestException("Lesson reorder request contains invalid lesson IDs");
        }

        for (int i = 0; i < lessonIds.size(); i++) {
            UUID lessonId = lessonIds.get(i);
            Lesson lesson = findLessonInCourse(courseId, lessonId);
            lesson.setOrderIndex(i + 1);
            lessonRepository.save(lesson);
        }
    }

    private Course findCourse(UUID courseId) {
        return courseRepository.findByIdAndIsDeletedFalse(courseId)
                .orElseThrow(() -> new ResourceNotFoundException("Course not found"));
    }

    private Lesson findLessonInCourse(UUID courseId, UUID lessonId) {
        return lessonRepository.findByIdAndCourseIdAndIsDeletedFalse(lessonId, courseId)
                .orElseThrow(() -> new ResourceNotFoundException("Lesson not found in course"));
    }

    private void validateLessonOrderForCreate(UUID courseId, Integer orderIndex) {
        if (lessonRepository.existsByCourseIdAndOrderIndexAndIsDeletedFalse(courseId, orderIndex)) {
            throw new ConflictException("orderIndex already exists in this course");
        }
    }

    private void validateLessonOrderForUpdate(UUID courseId, UUID lessonId, Integer orderIndex) {
        if (lessonRepository.existsByCourseIdAndOrderIndexAndIdNotAndIsDeletedFalse(courseId, orderIndex, lessonId)) {
            throw new ConflictException("orderIndex already exists in this course");
        }
    }

    private LessonBlockType parseLessonType(String lessonType) {
        try {
            return LessonBlockType.valueOf(lessonType.trim().toUpperCase());
        } catch (Exception ex) {
            throw new BadRequestException("Invalid lessonType. Allowed: TEXT, VIDEO, AUDIO, IMAGE, QUIZ, PRACTICE");
        }
    }
}
