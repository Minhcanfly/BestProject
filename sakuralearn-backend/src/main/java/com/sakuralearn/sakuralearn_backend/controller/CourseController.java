package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.request.CourseRequest;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import com.sakuralearn.sakuralearn_backend.service.AiSyllabusService;
import com.sakuralearn.sakuralearn_backend.service.CourseService;
import jakarta.validation.Valid;
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
    private final AiSyllabusService aiSyllabusService;

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
            @Valid @ModelAttribute CourseRequest request,
            @RequestPart(value = "thumbnail", required = false) MultipartFile thumbnail) {
        return ResponseEntity.ok(courseService.createCourse(request, userDetails.getId(), thumbnail));
    }

    @PutMapping("/{id}")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> updateCourse(
            @PathVariable UUID id,
            @Valid @ModelAttribute CourseRequest request,
            @RequestPart(value = "thumbnail", required = false) MultipartFile thumbnail) {
        return ResponseEntity.ok(courseService.updateCourse(id, request, thumbnail));
    }

    @DeleteMapping("/{id}")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> deleteCourse(@PathVariable UUID id) {
        courseService.deleteCourse(id);
        return ResponseEntity.ok().build();
    }

    @PatchMapping("/{id}/publish")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> publishCourse(@PathVariable UUID id, @RequestParam boolean publish) {
        return ResponseEntity.ok(courseService.publishCourse(id, publish));
    }

    @PostMapping("/{id}/generate-syllabus")
    @PreAuthorize("hasRole('TEACHER') or hasRole('ADMIN')")
    public ResponseEntity<?> generateSyllabus(@PathVariable UUID id, @RequestParam(defaultValue = "GPT_4O") String model) {
        aiSyllabusService.generateSyllabusForCourse(id, model);
        return ResponseEntity.ok("Syllabus generated successfully for course: " + id + " using model: " + model);
    }
}
