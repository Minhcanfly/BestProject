package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.Kanji;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.UUID;
import java.util.Optional;

@Repository
public interface KanjiRepository extends JpaRepository<Kanji, UUID> {
    Page<Kanji> findByJlptLevel(String jlptLevel, Pageable pageable);
    Optional<Kanji> findByCharacter(String character);
    long countByJlptLevel(String jlptLevel);

    @EntityGraph(attributePaths = {"radical"})
    Optional<Kanji> findById(UUID id);

    @Query("SELECT k FROM Kanji k WHERE k.character LIKE %:query% OR k.meaningVi ILIKE %:query% OR k.meaningEn ILIKE %:query%")
    Page<Kanji> searchKanji(@Param("query") String query, Pageable pageable);
}
