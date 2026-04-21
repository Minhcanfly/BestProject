package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.LessonBlockRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockResponse;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import com.sakuralearn.sakuralearn_backend.exception.ConflictException;
import com.sakuralearn.sakuralearn_backend.exception.ResourceNotFoundException;
import com.sakuralearn.sakuralearn_backend.mapper.LessonBlockMapper;
import com.sakuralearn.sakuralearn_backend.repository.LessonBlockRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.service.LessonBlockService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class LessonBlockServiceImpl implements LessonBlockService {

    private final LessonBlockRepository lessonBlockRepository;
    private final LessonRepository lessonRepository;
    private final LessonBlockMapper lessonBlockMapper;

    @Override
    @Transactional
    public LessonBlockResponse createBlock(UUID lessonId, LessonBlockRequest request) {
        Lesson lesson = findLesson(lessonId);
        validateBlockOrderForCreate(lessonId, request.getOrderIndex());

        LessonBlock block = LessonBlock.builder()
                .lesson(lesson)
                .blockType(request.getBlockType())
                .orderIndex(request.getOrderIndex())
                .contentVi(request.getContentVi())
                .contentJa(request.getContentJa())
                .contentEn(request.getContentEn())
                .videoUrl(request.getVideoUrl())
                .audioUrl(request.getAudioUrl())
                .imageUrl(request.getImageUrl())
                .metadata(request.getMetadata())
                .build();

        return lessonBlockMapper.toResponse(lessonBlockRepository.save(block));
    }

    @Override
    @Transactional
    public LessonBlockResponse updateBlock(UUID lessonId, UUID blockId, LessonBlockRequest request) {
        findLesson(lessonId);
        LessonBlock block = findBlockInLesson(lessonId, blockId);
        validateBlockOrderForUpdate(lessonId, blockId, request.getOrderIndex());

        block.setBlockType(request.getBlockType());
        block.setOrderIndex(request.getOrderIndex());
        block.setContentVi(request.getContentVi());
        block.setContentJa(request.getContentJa());
        block.setContentEn(request.getContentEn());
        block.setVideoUrl(request.getVideoUrl());
        block.setAudioUrl(request.getAudioUrl());
        block.setImageUrl(request.getImageUrl());
        block.setMetadata(request.getMetadata());

        return lessonBlockMapper.toResponse(lessonBlockRepository.save(block));
    }

    @Override
    @Transactional
    public void deleteBlock(UUID lessonId, UUID blockId) {
        findLesson(lessonId);
        LessonBlock block = findBlockInLesson(lessonId, blockId);
        lessonBlockRepository.delete(block);
    }

    @Override
    public List<LessonBlockResponse> getBlocksByLesson(UUID lessonId) {
        findLesson(lessonId);
        List<LessonBlock> blocks = lessonBlockRepository.findByLessonIdOrderByOrderIndexAsc(lessonId);
        return lessonBlockMapper.toResponseList(blocks);
    }

    @Override
    @Transactional
    public void reorderBlocks(UUID lessonId, List<UUID> blockIds) {
        findLesson(lessonId);
        if (blockIds == null || blockIds.isEmpty()) {
            throw new BadRequestException("Block order cannot be empty");
        }
        int existingCount = lessonBlockRepository.countByLessonIdAndIdIn(lessonId, blockIds);
        if (existingCount != blockIds.size()) {
            throw new BadRequestException("Block reorder request contains invalid block IDs");
        }

        for (int i = 0; i < blockIds.size(); i++) {
            UUID blockId = blockIds.get(i);
            LessonBlock block = findBlockInLesson(lessonId, blockId);
            block.setOrderIndex(i + 1);
            lessonBlockRepository.save(block);
        }
    }

    private Lesson findLesson(UUID lessonId) {
        return lessonRepository.findByIdAndIsDeletedFalse(lessonId)
                .orElseThrow(() -> new ResourceNotFoundException("Lesson not found"));
    }

    private LessonBlock findBlockInLesson(UUID lessonId, UUID blockId) {
        return lessonBlockRepository.findByIdAndLessonId(blockId, lessonId)
                .orElseThrow(() -> new ResourceNotFoundException("Lesson block not found in lesson"));
    }

    private void validateBlockOrderForCreate(UUID lessonId, Integer orderIndex) {
        if (lessonBlockRepository.existsByLessonIdAndOrderIndex(lessonId, orderIndex)) {
            throw new ConflictException("orderIndex already exists in this lesson");
        }
    }

    private void validateBlockOrderForUpdate(UUID lessonId, UUID blockId, Integer orderIndex) {
        if (lessonBlockRepository.existsByLessonIdAndOrderIndexAndIdNot(lessonId, orderIndex, blockId)) {
            throw new ConflictException("orderIndex already exists in this lesson");
        }
    }
}
