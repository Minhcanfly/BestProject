package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.CourseResponse;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

public interface CourseService {
    CourseResponse createCourse(CourseRequest request, UUID teacherId, MultipartFile thumbnail);
    CourseResponse updateCourse(UUID id, CourseRequest request, MultipartFile thumbnail);
    void deleteCourse(UUID id);
    CourseResponse publishCourse(UUID id, boolean publish);
    List<CourseResponse> getCoursesByLevel(String jlptLevel);
    CourseResponse getCourseById(UUID id);
}
