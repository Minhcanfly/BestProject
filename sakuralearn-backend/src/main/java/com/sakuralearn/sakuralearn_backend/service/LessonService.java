package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonResponse;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

public interface LessonService {
    LessonResponse createLesson(UUID courseId, LessonRequest request, MultipartFile video);
    LessonResponse updateLesson(UUID courseId, UUID lessonId, LessonRequest request, MultipartFile video);
    void deleteLesson(UUID courseId, UUID lessonId);
    List<LessonResponse> getLessonsByCourse(UUID courseId);
    void reorderLessons(UUID courseId, List<UUID> lessonIds);
}
