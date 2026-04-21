package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.entity.Course;
import java.util.UUID;

public interface AiSyllabusService {
    /**
     * Generates a structured syllabus (Lessons and LessonBlocks) for a course
     * using standard JLPT requirements for the course's level.
     */
    void generateSyllabusForCourse(UUID courseId, String model);
}
