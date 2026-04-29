package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;
import java.util.UUID;

@Entity
@Table(name = "grammar_points")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class GrammarPoint {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(name = "pattern_ja", nullable = false)
    private String patternJa;

    @Column(name = "jlpt_level", length = 20)
    private String jlptLevel;

    @Column(columnDefinition = "TEXT")
    private String explanationEn;

    @Column(columnDefinition = "TEXT")
    private String explanationVi;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "example_sentences", columnDefinition = "jsonb")
    private Object exampleSentences;

    @Column(name = "structure_vi", columnDefinition = "TEXT")
    private String structureVi;
}

