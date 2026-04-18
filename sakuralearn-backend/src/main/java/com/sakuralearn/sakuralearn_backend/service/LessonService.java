package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonRequest;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

public interface LessonService {
    Lesson createLesson(UUID courseId, LessonRequest request, MultipartFile video);
    List<Lesson> getLessonsByCourse(UUID courseId);
}
