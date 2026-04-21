package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import java.util.UUID;

public interface ProgressService {
    LessonProgressResponse completeLesson(UUID userId, UUID lessonId);
    double getCourseProgress(UUID userId, UUID courseId);
    void updateLastAccessed(UUID userId, UUID lessonId);
}
