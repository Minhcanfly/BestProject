package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonRequest;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.entity.enums.LessonBlockType;
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

    @Override
    @Transactional
    public Lesson createLesson(UUID courseId, LessonRequest request, MultipartFile video) {
        Course course = courseRepository.findByIdAndIsDeletedFalse(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        Lesson lesson = Lesson.builder()
                .course(course)
                .titleVi(request.getTitleVi())
                .titleJa(request.getTitleJa())
                .titleEn(request.getTitleEn())
                .orderIndex(request.getOrderIndex())
                .lessonType(LessonBlockType.valueOf(request.getLessonType()))
                .durationMinutes(request.getDurationMinutes())
                .isDeleted(false)
                .build();

        Lesson savedLesson = lessonRepository.save(lesson);

        // Create initial block if needed (preserving previous behavior for MVP)
        LessonBlock block = LessonBlock.builder()
                .lesson(savedLesson)
                .blockType(savedLesson.getLessonType())
                .orderIndex(1)
                .contentVi(request.getTitleVi()) // Placeholder or actual content if we had it
                .build();

        if (video != null && !video.isEmpty()) {
            String videoUrl = fileStorageService.uploadFile(video, "courses/" + courseId + "/lessons");
            block.setVideoUrl(videoUrl);
        }

        lessonBlockRepository.save(block);

        return savedLesson;
    }

    @Override
    public List<Lesson> getLessonsByCourse(UUID courseId) {
        return lessonRepository.findByCourseIdAndIsDeletedFalseOrderByOrderIndexAsc(courseId);
    }
}
