package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.CourseResponse;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

public interface CourseService {
    CourseResponse createCourse(CourseRequest request, UUID teacherId, MultipartFile thumbnail);
    CourseResponse updateCourse(UUID id, CourseRequest request, MultipartFile thumbnail, UUID userId, boolean isAdmin);
    void deleteCourse(UUID id, UUID userId, boolean isAdmin);
    CourseResponse publishCourse(UUID id, boolean publish, UUID userId, boolean isAdmin);
    List<CourseResponse> getCoursesByLevel(String jlptLevel);
    List<CourseResponse> getManagedCourses(UUID userId, boolean isAdmin);
    CourseResponse getCourseById(UUID id);
    List<CourseResponse> searchCourses(String keyword, String jlptLevel, Double maxPrice);
}
