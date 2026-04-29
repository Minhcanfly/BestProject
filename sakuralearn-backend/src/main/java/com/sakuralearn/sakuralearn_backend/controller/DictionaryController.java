package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.dto.response.DictionaryStatsResponse;
import com.sakuralearn.sakuralearn_backend.entity.GrammarPoint;
import com.sakuralearn.sakuralearn_backend.entity.Kanji;
import com.sakuralearn.sakuralearn_backend.entity.Vocabulary;
import com.sakuralearn.sakuralearn_backend.service.DictionaryService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/dictionary")
@RequiredArgsConstructor
public class DictionaryController {

    private final DictionaryService dictionaryService;

    @GetMapping("/library")
    public ResponseEntity<List<Map<String, Object>>> getLibrary() {
        return ResponseEntity.ok(dictionaryService.getLibraryCards());
    }

    // Kanji Endpoints
    @GetMapping("/kanji")
    public ResponseEntity<Page<Kanji>> getKanji(
            @RequestParam String level,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.getKanjiByLevel(level, pageable));
    }

    @GetMapping("/kanji/{id}")
    public ResponseEntity<Kanji> getKanjiDetail(@PathVariable UUID id) {
        return ResponseEntity.ok(dictionaryService.getKanjiDetail(id));
    }

    // Vocabulary Endpoints
    @GetMapping("/vocab")
    public ResponseEntity<Page<Vocabulary>> getVocab(
            @RequestParam String level,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.getVocabByLevel(level, pageable));
    }

    @GetMapping("/vocab/{id}")
    public ResponseEntity<Vocabulary> getVocabDetail(@PathVariable UUID id) {
        return ResponseEntity.ok(dictionaryService.getVocabDetail(id));
    }

    // Grammar Endpoints
    @GetMapping("/grammar")
    public ResponseEntity<Page<GrammarPoint>> getGrammar(
            @RequestParam String level,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.getGrammarByLevel(level, pageable));
    }

    @GetMapping("/grammar/{id}")
    public ResponseEntity<GrammarPoint> getGrammarDetail(@PathVariable UUID id) {
        return ResponseEntity.ok(dictionaryService.getGrammarDetail(id));
    }

    // Global Search
    @GetMapping("/search")
    public ResponseEntity<Map<String, Object>> search(
            @RequestParam String query,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.globalSearch(query, pageable));
    }

    @GetMapping("/search/kanji")
    public ResponseEntity<Page<Kanji>> searchKanji(
            @RequestParam String query,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.searchKanji(query, pageable));
    }

    @GetMapping("/search/vocab")
    public ResponseEntity<Page<Vocabulary>> searchVocab(
            @RequestParam String query,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.searchVocab(query, pageable));
    }

    @GetMapping("/search/grammar")
    public ResponseEntity<Page<GrammarPoint>> searchGrammar(
            @RequestParam String query,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(dictionaryService.searchGrammar(query, pageable));
    }

    @GetMapping("/kanji/related-vocab")
    public ResponseEntity<List<Vocabulary>> getRelatedVocab(@RequestParam String character) {
        return ResponseEntity.ok(dictionaryService.getVocabByKanji(character));
    }
}
