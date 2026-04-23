package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonBlockProgressResponse;
import com.sakuralearn.sakuralearn_backend.entity.LessonBlockProgress;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LessonBlockProgressMapper {
    @Mapping(target = "userId", source = "user.id")
    @Mapping(target = "lessonBlockId", source = "lessonBlock.id")
    LessonBlockProgressResponse toResponse(LessonBlockProgress progress);
    
    List<LessonBlockProgressResponse> toResponseList(List<LessonBlockProgress> list);
}
