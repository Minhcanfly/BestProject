package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.GrammarPoint;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface GrammarPointRepository extends JpaRepository<GrammarPoint, UUID> {
    Page<GrammarPoint> findByJlptLevel(String jlptLevel, Pageable pageable);
    long countByJlptLevel(String jlptLevel);

    @Query("SELECT g FROM GrammarPoint g WHERE g.patternJa LIKE %:query% OR g.explanationVi ILIKE %:query% OR g.explanationEn ILIKE %:query%")
    Page<GrammarPoint> searchGrammar(@Param("query") String query, Pageable pageable);
}
