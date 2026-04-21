package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockResponse;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlock;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LessonBlockMapper {
    LessonBlockResponse toResponse(LessonBlock block);
    List<LessonBlockResponse> toResponseList(List<LessonBlock> blocks);
}
