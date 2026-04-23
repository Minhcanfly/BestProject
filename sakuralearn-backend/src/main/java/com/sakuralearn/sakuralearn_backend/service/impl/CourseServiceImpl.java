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

        Course saved = courseRepository.save(course);
        CourseResponse response = courseMapper.toResponse(saved);
        response.setTeacherName(teacher.getFullName());
        response.setLessonCount(0); // New course has 0 lessons
        return response;
    }

    @Override
    @Transactional
    public CourseResponse updateCourse(UUID id, CourseRequest request, MultipartFile thumbnail, UUID userId, boolean isAdmin) {
        Course course = findCourseById(id);
        checkCourseOwnership(course, userId, isAdmin);
        
        courseMapper.updateEntity(request, course);

        if (thumbnail != null && !thumbnail.isEmpty()) {
            String thumbnailUrl = fileStorageService.uploadFile(thumbnail, "courses/thumbnails");
            course.setThumbnailUrl(thumbnailUrl);
        }

        Course saved = courseRepository.save(course);
        CourseResponse response = courseMapper.toResponse(saved);
        if (saved.getTeacher() != null) {
            response.setTeacherName(saved.getTeacher().getFullName());
        }
        response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(id));
        return response;
    }

    @Override
    @Transactional
    public void deleteCourse(UUID id, UUID userId, boolean isAdmin) {
        Course course = findCourseById(id);
        checkCourseOwnership(course, userId, isAdmin);
        
        course.setIsDeleted(true);
        courseRepository.save(course);
    }

    @Override
    @Transactional
    public CourseResponse publishCourse(UUID id, boolean publish, UUID userId, boolean isAdmin) {
        Course course = findCourseById(id);
        checkCourseOwnership(course, userId, isAdmin);

        if (publish && lessonRepository.countByCourseIdAndIsDeletedFalse(id) == 0) {
            throw new BadRequestException("Course must have at least one lesson before publishing");
        }
        course.setIsPublished(publish);
        Course saved = courseRepository.save(course);
        CourseResponse response = courseMapper.toResponse(saved);
        if (saved.getTeacher() != null) {
            response.setTeacherName(saved.getTeacher().getFullName());
        }
        response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(id));
        return response;
    }

    private void checkCourseOwnership(Course course, UUID userId, boolean isAdmin) {
        if (!isAdmin && !course.getTeacher().getId().equals(userId)) {
            throw new BadRequestException("You do not have permission to modify this course");
        }
    }

    @Override
    public List<CourseResponse> getCoursesByLevel(String jlptLevel) {
        List<Course> courses;
        if (jlptLevel == null || jlptLevel.isEmpty()) {
            courses = courseRepository.findByIsDeletedFalse();
        } else {
            courses = courseRepository.findByJlptLevelAndIsDeletedFalse(jlptLevel);
        }
        
        return courses.stream().map(course -> {
            CourseResponse response = courseMapper.toResponse(course);
            // Manually set teacher name and lesson count to ensure they are populated
            if (course.getTeacher() != null) {
                response.setTeacherName(course.getTeacher().getFullName());
            }
            
            // Fallback: if @Formula fails, count manually (safer)
            if (response.getLessonCount() == null || response.getLessonCount() == 0) {
                int count = (int) lessonRepository.countByCourseIdAndIsDeletedFalse(course.getId());
                response.setLessonCount(count);
            }
            
            return response;
        }).toList();
    }

    @Override
    public List<CourseResponse> getManagedCourses(UUID userId, boolean isAdmin) {
        List<Course> courses;
        if (isAdmin) {
            courses = courseRepository.findByIsDeletedFalse();
        } else {
            courses = courseRepository.findByTeacherIdAndIsDeletedFalse(userId);
        }
        
        return courses.stream().map(course -> {
            CourseResponse response = courseMapper.toResponse(course);
            if (course.getTeacher() != null) {
                response.setTeacherName(course.getTeacher().getFullName());
            }
            response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(course.getId()));
            return response;
        }).toList();
    }

    @Override
    public CourseResponse getCourseById(UUID id) {
        Course course = findCourseById(id);
        CourseResponse response = courseMapper.toResponse(course);
        
        if (course.getTeacher() != null) {
            response.setTeacherName(course.getTeacher().getFullName());
        }
        
        if (response.getLessonCount() == null || response.getLessonCount() == 0) {
            response.setLessonCount((int) lessonRepository.countByCourseIdAndIsDeletedFalse(id));
        }
        
        return response;
    }

    private Course findCourseById(UUID id) {
        return courseRepository.findByIdAndIsDeletedFalse(id)
                .orElseThrow(() -> new ResourceNotFoundException("Course not found"));
    }
}
