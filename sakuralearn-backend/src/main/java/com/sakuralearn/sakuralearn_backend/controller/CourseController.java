package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.CourseService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/courses")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;

    @GetMapping
    public ResponseEntity<?> getCourses(@RequestParam(value = "jlptLevel", required = false) String jlptLevel) {
        return ResponseEntity.ok(courseService.getCoursesByLevel(jlptLevel));
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getCourseById(@PathVariable UUID id) {
        return ResponseEntity.ok(courseService.getCourseById(id));
    }

    @PostMapping
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> createCourse(
            @AuthenticationPrincipal UserDetailsImpl userDetails,
            @ModelAttribute CourseRequest request,
            @RequestPart(value = "thumbnail", required = false) MultipartFile thumbnail) {
        return ResponseEntity.ok(courseService.createCourse(request, userDetails.getId(), thumbnail));
    }
}
