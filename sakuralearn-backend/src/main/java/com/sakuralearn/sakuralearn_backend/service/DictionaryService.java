package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.DictionaryStatsResponse;
import com.sakuralearn.sakuralearn_backend.entity.GrammarPoint;
import com.sakuralearn.sakuralearn_backend.entity.Kanji;
import com.sakuralearn.sakuralearn_backend.entity.Vocabulary;
import com.sakuralearn.sakuralearn_backend.repository.GrammarPointRepository;
import com.sakuralearn.sakuralearn_backend.repository.KanjiRepository;
import com.sakuralearn.sakuralearn_backend.repository.VocabularyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class DictionaryService {

    private final KanjiRepository kanjiRepository;
    private final VocabularyRepository vocabularyRepository;
    private final GrammarPointRepository grammarPointRepository;

    private static final List<String> JLPT_LEVELS = List.of("N5", "N4", "N3", "N2", "N1");
    private static final List<String> CATEGORIES = List.of("VOCAB", "KANJI", "GRAMMAR");

    public List<Map<String, Object>> getLibraryCards() {
        List<Map<String, Object>> cards = new java.util.ArrayList<>();
        
        for (String level : JLPT_LEVELS) {
            // Vocab Card
            cards.add(createCard("VOCAB", level, "Từ vựng " + level, vocabularyRepository.countByJlptLevel(level)));
            // Grammar Card
            cards.add(createCard("GRAMMAR", level, "Ngữ pháp " + level, grammarPointRepository.countByJlptLevel(level)));
            // Kanji Card
            cards.add(createCard("KANJI", level, "Hán tự " + level, kanjiRepository.countByJlptLevel(level)));
        }
        return cards;
    }

    private Map<String, Object> createCard(String category, String level, String title, long count) {
        Map<String, Object> card = new java.util.HashMap<>();
        card.put("category", category);
        card.put("level", level);
        card.put("title", title);
        card.put("totalItems", count);
        return card;
    }

    // Kanji
    public Page<Kanji> getKanjiByLevel(String level, Pageable pageable) {
        return kanjiRepository.findByJlptLevel(level, pageable);
    }

    public Kanji getKanjiDetail(UUID id) {
        Kanji kanji = kanjiRepository.findById(id).orElseThrow();
        // Trigger lazy loading of components
        if (kanji.getComponents() != null) {
            kanji.getComponents().size();
        }
        return kanji;
    }

    // Vocabulary
    public Page<Vocabulary> getVocabByLevel(String level, Pageable pageable) {
        return vocabularyRepository.findByJlptLevel(level, pageable);
    }

    public Vocabulary getVocabDetail(UUID id) {
        return vocabularyRepository.findById(id).orElseThrow();
    }

    // Grammar
    public Page<GrammarPoint> getGrammarByLevel(String level, Pageable pageable) {
        return grammarPointRepository.findByJlptLevel(level, pageable);
    }

    public GrammarPoint getGrammarDetail(UUID id) {
        return grammarPointRepository.findById(id).orElseThrow();
    }

    // Search
    public Page<Kanji> searchKanji(String query, Pageable pageable) {
        String processedQuery = query;
        if (com.sakuralearn.sakuralearn_backend.util.RomajiConverter.isRomaji(query)) {
            processedQuery = com.sakuralearn.sakuralearn_backend.util.RomajiConverter.toHiragana(query);
        }
        return kanjiRepository.searchKanji(processedQuery, pageable);
    }

    public Page<Vocabulary> searchVocab(String query, Pageable pageable) {
        String processedQuery = query;
        if (com.sakuralearn.sakuralearn_backend.util.RomajiConverter.isRomaji(query)) {
            processedQuery = com.sakuralearn.sakuralearn_backend.util.RomajiConverter.toHiragana(query);
        }
        return vocabularyRepository.searchVocabulary(processedQuery, pageable);
    }

    public Page<GrammarPoint> searchGrammar(String query, Pageable pageable) {
        String processedQuery = query;
        if (com.sakuralearn.sakuralearn_backend.util.RomajiConverter.isRomaji(query)) {
            processedQuery = com.sakuralearn.sakuralearn_backend.util.RomajiConverter.toHiragana(query);
        }
        return grammarPointRepository.searchGrammar(processedQuery, pageable);
    }

    public Map<String, Object> globalSearch(String query, Pageable pageable) {
        String processedQuery = query;
        if (com.sakuralearn.sakuralearn_backend.util.RomajiConverter.isRomaji(query)) {
            processedQuery = com.sakuralearn.sakuralearn_backend.util.RomajiConverter.toHiragana(query);
        }
        Map<String, Object> results = new HashMap<>();
        results.put("kanji", kanjiRepository.searchKanji(processedQuery, pageable));
        results.put("vocab", vocabularyRepository.searchVocabulary(processedQuery, pageable));
        results.put("grammar", grammarPointRepository.searchGrammar(processedQuery, pageable));
        return results;
    }

    // Related Items
    public List<Vocabulary> getVocabByKanji(String character) {
        return vocabularyRepository.searchVocabulary(character, Pageable.ofSize(10)).getContent();
    }
}
