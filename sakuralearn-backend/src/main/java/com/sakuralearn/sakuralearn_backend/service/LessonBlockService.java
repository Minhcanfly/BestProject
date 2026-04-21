package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockResponse;
import java.util.List;
import java.util.UUID;

public interface LessonBlockService {
    LessonBlockResponse createBlock(UUID lessonId, LessonBlockRequest request);
    LessonBlockResponse updateBlock(UUID lessonId, UUID blockId, LessonBlockRequest request);
    void deleteBlock(UUID lessonId, UUID blockId);
    List<LessonBlockResponse> getBlocksByLesson(UUID lessonId);
    void reorderBlocks(UUID lessonId, List<UUID> blockIds);
}
