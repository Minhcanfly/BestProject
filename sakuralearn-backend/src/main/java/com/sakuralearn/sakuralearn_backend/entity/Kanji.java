package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;
import java.util.UUID;

@Entity
@Table(name = "kanji")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Kanji {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(nullable = false, unique = true)
    private String character;

    @Column(name = "jlpt_level", length = 20)
    private String jlptLevel;

    @Column(columnDefinition = "TEXT")
    private String meaningEn;

    @Column(columnDefinition = "TEXT")
    private String meaningVi;

    @JdbcTypeCode(SqlTypes.ARRAY)
    @Column(name = "onyomi", columnDefinition = "text[]")
    private String[] onyomi;

    @JdbcTypeCode(SqlTypes.ARRAY)
    @Column(name = "kunyomi", columnDefinition = "text[]")
    private String[] kunyomi;

    private Integer strokeCount;

    @Column(name = "stroke_order_image_url", columnDefinition = "TEXT")
    private String strokeOrderImageUrl;

    @Column(name = "stroke_data", columnDefinition = "TEXT")
    private String strokeData;

    private Integer frequency;

    @Column(name = "mnemonic_vi", columnDefinition = "TEXT")
    private String mnemonicVi;

    @Column(name = "audio_url", columnDefinition = "TEXT")
    private String audioUrl;

    @JdbcTypeCode(SqlTypes.ARRAY)
    @Column(name = "synonyms", columnDefinition = "text[]")
    private String[] synonyms;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "example_sentences", columnDefinition = "jsonb")
    private Object exampleSentences;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "radical_id")
    private Radical radical;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "kanji_components",
        joinColumns = @JoinColumn(name = "kanji_id"),
        inverseJoinColumns = @JoinColumn(name = "radical_id")
    )
    private java.util.Set<Radical> components;
}
