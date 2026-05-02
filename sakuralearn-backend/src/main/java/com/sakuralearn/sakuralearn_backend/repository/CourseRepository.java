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
    List<Course> findByTeacherIdAndIsDeletedFalse(UUID teacherId);
    Optional<Course> findByIdAndIsDeletedFalse(UUID id);

    @org.springframework.data.jpa.repository.Query("SELECT c FROM Course c WHERE c.isDeleted = false " +
            "AND (COALESCE(:keyword, '') = '' OR LOWER(c.titleVi) LIKE LOWER(CONCAT('%', :keyword, '%')) " +
            "OR LOWER(c.titleJa) LIKE LOWER(CONCAT('%', :keyword, '%'))) " +
            "AND (COALESCE(:jlptLevel, '') = '' OR c.jlptLevel = :jlptLevel) " +
            "AND (:maxPrice IS NULL OR c.price <= :maxPrice)")
    List<Course> searchCourses(String keyword, String jlptLevel, Double maxPrice);
}
