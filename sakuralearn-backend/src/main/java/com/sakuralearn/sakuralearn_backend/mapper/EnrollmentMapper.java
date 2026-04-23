package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.EnrollmentResponse;
import com.sakuralearn.sakuralearn_backend.entity.Enrollment;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface EnrollmentMapper {
    @Mapping(target = "courseId", source = "course.id")
    @Mapping(target = "courseTitle", source = "course.titleVi")
    @Mapping(target = "thumbnailUrl", source = "course.thumbnailUrl")
    @Mapping(target = "jlptLevel", source = "course.jlptLevel")
    @Mapping(target = "lessonCount", source = "course.lessonCount")
    EnrollmentResponse toResponse(Enrollment enrollment);
    
    List<EnrollmentResponse> toResponseList(List<Enrollment> enrollments);
}
