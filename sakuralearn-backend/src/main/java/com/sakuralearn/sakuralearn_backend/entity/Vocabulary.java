package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;
import java.util.UUID;

@Entity
@Table(name = "vocabulary")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Vocabulary {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(name = "word_ja", nullable = false)
    private String wordJa;

    private String reading;

    @Column(name = "jlpt_level", length = 20)
    private String jlptLevel;

    @Column(columnDefinition = "TEXT")
    private String meaningEn;

    @Column(columnDefinition = "TEXT")
    private String meaningVi;

    private String partOfSpeech;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "example_sentences", columnDefinition = "jsonb")
    private Object exampleSentences;

    @Column(name = "audio_url", columnDefinition = "TEXT")
    private String audioUrl;

    @JdbcTypeCode(SqlTypes.ARRAY)
    @Column(name = "synonyms", columnDefinition = "text[]")
    private String[] synonyms;

    @JdbcTypeCode(SqlTypes.ARRAY)
    @Column(name = "antonyms", columnDefinition = "text[]")
    private String[] antonyms;

    @Column(name = "mnemonic_vi", columnDefinition = "TEXT")
    private String mnemonicVi;
}
