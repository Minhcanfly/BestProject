package com.sakuralearn.sakuralearn_backend.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.UUID;

@Entity
@Table(name = "radicals")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Radical {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Column(nullable = false, unique = true)
    private String character;

    @Column(name = "meaning_en")
    private String meaningEn;

    @Column(name = "meaning_vi")
    private String meaningVi;

    @Column(name = "stroke_count")
    private Integer strokeCount;

    @Column(name = "image_path")
    private String imagePath;
}
