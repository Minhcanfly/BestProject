package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface CourseRepository extends JpaRepository<Course, UUID> {
    List<Course> findByIsDeletedFalse();
    List<Course> findByJlptLevel(String jlptLevel);
    List<Course> findByJlptLevelAndIsDeletedFalse(String jlptLevel);
    Optional<Course> findByIdAndIsDeletedFalse(UUID id);
}
