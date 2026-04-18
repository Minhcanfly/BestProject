package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

public interface CourseService {
    Course createCourse(CourseRequest request, UUID teacherId, MultipartFile thumbnail);
    List<Course> getCoursesByLevel(String jlptLevel);
    Course getCourseById(UUID id);
}
