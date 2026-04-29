package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.Vocabulary;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface VocabularyRepository extends JpaRepository<Vocabulary, UUID> {
    Page<Vocabulary> findByJlptLevel(String jlptLevel, Pageable pageable);
    long countByJlptLevel(String jlptLevel);

    @Query("SELECT v FROM Vocabulary v WHERE v.wordJa LIKE %:query% OR v.reading LIKE %:query% OR v.meaningVi ILIKE %:query% OR v.meaningEn ILIKE %:query%")
    Page<Vocabulary> searchVocabulary(@Param("query") String query, Pageable pageable);
}
