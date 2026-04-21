package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonProgressResponse;
import com.sakuralearn.sakuralearn_backend.entity.LessonProgress;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LessonProgressMapper {
    @Mapping(target = "lessonId", source = "lesson.id")
    LessonProgressResponse toResponse(LessonProgress progress);
    
    List<LessonProgressResponse> toResponseList(List<LessonProgress> list);
}
