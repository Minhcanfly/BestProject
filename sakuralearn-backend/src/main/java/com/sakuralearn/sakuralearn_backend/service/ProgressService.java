package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockProgressRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockProgressResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import java.util.UUID;
import java.util.List;

public interface ProgressService {
    double getCourseProgress(UUID userId, UUID courseId);
    void updateLastAccessed(UUID userId, UUID lessonId);
    
    // New methods for Module 3
    LessonBlockProgressResponse updateBlockProgress(UUID userId, UUID blockId, LessonBlockProgressRequest request);
    List<LessonBlockProgressResponse> getLessonBlocksProgress(UUID userId, UUID lessonId);
    void completeLesson(UUID userId, UUID lessonId);
    List<UUID> getCompletedLessonIds(UUID userId, UUID courseId);
    void recalculateCourseProgressForAllUsers(UUID courseId);
}
