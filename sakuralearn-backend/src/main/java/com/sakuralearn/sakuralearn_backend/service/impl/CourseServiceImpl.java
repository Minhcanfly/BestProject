package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.CourseResponse;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.exception.BadRequestException;
import com.sakuralearn.sakuralearn_backend.exception.ResourceNotFoundException;
import com.sakuralearn.sakuralearn_backend.mapper.CourseMapper;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
import com.sakuralearn.sakuralearn_backend.repository.LessonRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.service.CourseService;
import com.sakuralearn.sakuralearn_backend.service.FileStorageService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class CourseServiceImpl implements CourseService {

    private final CourseRepository courseRepository;
    private final UserRepository userRepository;
    private final LessonRepository lessonRepository;
    private final FileStorageService fileStorageService;
    private final CourseMapper courseMapper;

    @Override
    @Transactional
    public CourseResponse createCourse(CourseRequest request, UUID teacherId, MultipartFile thumbnail) {
        User teacher = userRepository.findById(teacherId)
                .orElseThrow(() -> new ResourceNotFoundException("Teacher not found"));
        
        Course course = Course.builder()
                .teacher(teacher)
                .isPublished(false)
                .isDeleted(false)
                .build();
        
        courseMapper.updateEntity(request, course);

        if (thumbnail != null && !thumbnail.isEmpty()) {
            String thumbnailUrl = fileStorageService.uploadFile(thumbnail, "courses/thumbnails");
            course.setThumbnailUrl(thumbnailUrl);
        }

        return courseMapper.toResponse(courseRepository.save(course));
    }

    @Override
    @Transactional
    public CourseResponse updateCourse(UUID id, CourseRequest request, MultipartFile thumbnail) {
        Course course = findCourseById(id);
        courseMapper.updateEntity(request, course);

        if (thumbnail != null && !thumbnail.isEmpty()) {
            String thumbnailUrl = fileStorageService.uploadFile(thumbnail, "courses/thumbnails");
            course.setThumbnailUrl(thumbnailUrl);
        }

        return courseMapper.toResponse(courseRepository.save(course));
    }

    @Override
    @Transactional
    public void deleteCourse(UUID id) {
        Course course = findCourseById(id);
        course.setIsDeleted(true);
        courseRepository.save(course);
    }

    @Override
    @Transactional
    public CourseResponse publishCourse(UUID id, boolean publish) {
        Course course = findCourseById(id);
        if (publish && lessonRepository.countByCourseIdAndIsDeletedFalse(id) == 0) {
            throw new BadRequestException("Course must have at least one lesson before publishing");
        }
        course.setIsPublished(publish);
        return courseMapper.toResponse(courseRepository.save(course));
    }

    @Override
    public List<CourseResponse> getCoursesByLevel(String jlptLevel) {
        List<Course> courses;
        if (jlptLevel == null || jlptLevel.isEmpty()) {
            courses = courseRepository.findByIsDeletedFalse();
        } else {
            courses = courseRepository.findByJlptLevelAndIsDeletedFalse(jlptLevel);
        }
        return courseMapper.toResponseList(courses);
    }

    @Override
    public CourseResponse getCourseById(UUID id) {
        return courseMapper.toResponse(findCourseById(id));
    }

    private Course findCourseById(UUID id) {
        return courseRepository.findByIdAndIsDeletedFalse(id)
                .orElseThrow(() -> new ResourceNotFoundException("Course not found"));
    }
}
