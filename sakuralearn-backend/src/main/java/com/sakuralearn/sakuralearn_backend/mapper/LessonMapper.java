package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.LessonResponse;
import com.sakuralearn.sakuralearn_backend.entity.Lesson;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LessonMapper {
    LessonResponse toResponse(Lesson lesson);
    List<LessonResponse> toResponseList(List<Lesson> lessons);
}
