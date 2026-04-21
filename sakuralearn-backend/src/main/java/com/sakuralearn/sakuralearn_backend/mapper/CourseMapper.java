package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.CourseResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface CourseMapper {
    CourseResponse toResponse(Course course);
    List<CourseResponse> toResponseList(List<Course> courses);
    
    void updateEntity(CourseRequest request, @MappingTarget Course course);
}
