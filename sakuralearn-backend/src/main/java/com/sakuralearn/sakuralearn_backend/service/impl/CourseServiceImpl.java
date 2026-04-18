package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.entity.Course;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.CourseRepository;
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
    private final FileStorageService fileStorageService;

    @Override
    @Transactional
    public Course createCourse(CourseRequest request, UUID teacherId, MultipartFile thumbnail) {
        User teacher = userRepository.findById(teacherId).orElseThrow(() -> new RuntimeException("Teacher not found"));
        
        Course course = Course.builder()
                .titleVi(request.getTitleVi())
                .titleJa(request.getTitleJa())
                .titleEn(request.getTitleEn())
                .descriptionVi(request.getDescriptionVi())
                .jlptLevel(request.getJlptLevel())
                .price(request.getPrice())
                .durationMinutes(request.getDurationMinutes())
                .teacher(teacher)
                .isPublished(false)
                .isDeleted(false)
                .build();

        if (thumbnail != null && !thumbnail.isEmpty()) {
            String thumbnailUrl = fileStorageService.uploadFile(thumbnail, "courses/thumbnails");
            course.setThumbnailUrl(thumbnailUrl);
        }

        return courseRepository.save(course);
    }

    @Override
    public List<Course> getCoursesByLevel(String jlptLevel) {
        if (jlptLevel == null || jlptLevel.isEmpty()) {
            return courseRepository.findAll();
        }
        return courseRepository.findByJlptLevel(jlptLevel);
    }

    @Override
    public Course getCourseById(UUID id) {
        return courseRepository.findByIdAndIsDeletedFalse(id)
                .orElseThrow(() -> new RuntimeException("Course not found"));
    }
}
