package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.response.FlashcardResponse;
import com.sakuralearn.sakuralearn_backend.entity.*;
import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import com.sakuralearn.sakuralearn_backend.repository.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;
import com.sakuralearn.sakuralearn_backend.dto.response.NotebookFolderResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.NotebookItemResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.SrsStatsResponse;

@Service
@RequiredArgsConstructor
@Slf4j
public class NotebookService {

    private final UserNotebookRepository userNotebookRepository;
    private final FlashcardRepository flashcardRepository;
    private final FlashcardReviewRepository flashcardReviewRepository;
    private final UserRepository userRepository;
    
    private final NotebookFolderRepository notebookFolderRepository;
    
    private final KanjiRepository kanjiRepository;
    private final VocabularyRepository vocabularyRepository;
    private final GrammarPointRepository grammarPointRepository;

    @Transactional
    public NotebookFolderResponse createFolder(UUID userId, String name, String description) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found: " + userId));
                
        NotebookFolder folder = NotebookFolder.builder()
                .user(user)
                .name(name)
                .description(description)
                .build();
                
        NotebookFolder saved = notebookFolderRepository.save(folder);
        return NotebookFolderResponse.builder()
                .id(saved.getId())
                .name(saved.getName())
                .description(saved.getDescription())
                .itemCount(0)
                .createdAt(saved.getCreatedAt())
                .build();
    }

    public List<NotebookFolderResponse> getFolders(UUID userId) {
        return notebookFolderRepository.findByUserIdOrderByCreatedAtDesc(userId).stream()
                .map(f -> NotebookFolderResponse.builder()
                        .id(f.getId())
                        .name(f.getName())
                        .description(f.getDescription())
                        .itemCount(userNotebookRepository.countByFolderId(f.getId()))
                        .createdAt(f.getCreatedAt())
                        .build())
                .collect(Collectors.toList());
    }

    public List<NotebookItemResponse> getFolderItems(UUID folderId) {
        List<UserNotebook> entries = userNotebookRepository.findByFolderIdOrderByAddedAtDesc(folderId);
        return entries.stream().map(entry -> {
            NotebookItemResponse.NotebookItemResponseBuilder builder = NotebookItemResponse.builder()
                    .id(entry.getId())
                    .itemType(entry.getItemType())
                    .itemId(entry.getItemId())
                    .note(entry.getNote())
                    .addedAt(entry.getAddedAt());

            // Lấy thông tin chi tiết dựa trên loại mục
            switch (entry.getItemType()) {
                case KANJI:
                    kanjiRepository.findById(entry.getItemId()).ifPresent(k -> {
                        builder.word(k.getCharacter())
                               .reading(k.getOnyomi() != null && k.getOnyomi().length > 0 ? k.getOnyomi()[0] : "")
                               .meaning(k.getMeaningVi());
                    });
                    break;
                case VOCAB:
                    vocabularyRepository.findById(entry.getItemId()).ifPresent(v -> {
                        builder.word(v.getWordJa())
                               .reading(v.getReading())
                               .meaning(v.getMeaningVi());
                    });
                    break;
                case GRAMMAR:
                    grammarPointRepository.findById(entry.getItemId()).ifPresent(g -> {
                        builder.word(g.getPatternJa())
                               .reading("")
                               .meaning(g.getExplanationVi());
                    });
                    break;
                case CUSTOM:
                    builder.word(entry.getCustomWord())
                           .reading(entry.getCustomReading())
                           .meaning(entry.getCustomMeaning());
                    break;
            }
            return builder.build();
        }).collect(Collectors.toList());
    }

    public SrsStatsResponse getSrsStats(UUID userId) {
        int level1 = flashcardRepository.countByUserIdAndRepsLessThanEqual(userId, 0);
        int level2 = flashcardRepository.countByUserIdAndRepsBetween(userId, 1, 1);
        int level3 = flashcardRepository.countByUserIdAndRepsBetween(userId, 2, 2);
        int level4 = flashcardRepository.countByUserIdAndRepsBetween(userId, 3, 3);
        int level5 = flashcardRepository.countByUserIdAndRepsGreaterThanEqual(userId, 4);

        return SrsStatsResponse.builder()
                .level1(level1)
                .level2(level2)
                .level3(level3)
                .level4(level4)
                .level5(level5)
                .build();
    }

    @Transactional
    public void addToNotebook(UUID userId, ItemType itemType, UUID itemId, String note, UUID folderId) {
        try {
            log.info("Adding item to notebook: user={}, type={}, id={}", userId, itemType, itemId);
            
            if (userNotebookRepository.existsByUserIdAndItemTypeAndItemId(userId, itemType, itemId)) {
                log.warn("Item already exists in notebook");
                return;
            }

            validateItemExists(itemType, itemId);

            User user = userRepository.findById(userId)
                    .orElseThrow(() -> new RuntimeException("User not found: " + userId));
            
            UserNotebook entry = UserNotebook.builder()
                    .user(user)
                    .folderId(folderId)
                    .itemType(itemType)
                    .itemId(itemId)
                    .note(note)
                    .build();
            
            userNotebookRepository.save(entry);
            log.info("Successfully added to notebook");
            
            // Tự động thêm vào SRS để tích hợp chung hệ thống
            addToSRS(userId, itemType, itemId);
            
        } catch (Exception e) {
            log.error("Error adding to notebook: {}", e.getMessage(), e);
            throw new RuntimeException("Lỗi lưu vào sổ tay: " + e.getMessage());
        }
    }

    @Transactional
    public void addCustomItem(UUID userId, UUID folderId, String word, String reading, String meaning, String note) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("User not found"));
        
        UserNotebook notebook = UserNotebook.builder()
                .user(user)
                .itemType(ItemType.CUSTOM)
                .folderId(folderId)
                .customWord(word)
                .customReading(reading)
                .customMeaning(meaning)
                .note(note)
                .build();
        UserNotebook saved = userNotebookRepository.save(notebook);

        // Add to Flashcard for SRS
        Flashcard flashcard = Flashcard.builder()
                .user(user)
                .itemType(ItemType.CUSTOM)
                .itemId(saved.getId()) // Use notebook ID as itemId for custom items
                .intervalDays(1)
                .easeFactor(2.5)
                .reps(0)
                .dueDate(OffsetDateTime.now())
                .build();
        flashcardRepository.save(flashcard);
    }

    @Transactional
    public void addToSRS(UUID userId, ItemType itemType, UUID itemId) {
        try {
            log.info("Adding item to SRS: user={}, type={}, id={}", userId, itemType, itemId);

            if (flashcardRepository.existsByUserIdAndItemTypeAndItemId(userId, itemType, itemId)) {
                log.warn("Item already exists in SRS");
                return;
            }

            validateItemExists(itemType, itemId);

            User user = userRepository.findById(userId)
                    .orElseThrow(() -> new RuntimeException("User not found: " + userId));
            
            Flashcard flashcard = Flashcard.builder()
                    .user(user)
                    .itemType(itemType)
                    .itemId(itemId)
                    .dueDate(OffsetDateTime.now())
                    .intervalDays(1) // Khởi tạo 1 ngày thay vì 0
                    .reps(0)
                    .easeFactor(2.5)
                    .build();
            
            flashcardRepository.save(flashcard);
            log.info("Successfully added to SRS");
        } catch (Exception e) {
            log.error("Error adding to SRS: {}", e.getMessage(), e);
            throw new RuntimeException("Lỗi thêm vào lộ trình SRS: " + e.getMessage());
        }
    }

    @Transactional
    public void processReview(UUID userId, UUID flashcardId, int quality) {
        log.info("Processing review: user={}, card={}, quality={}", userId, flashcardId, quality);
        
        Flashcard card = flashcardRepository.findById(flashcardId)
                .orElseThrow(() -> new RuntimeException("Flashcard not found: " + flashcardId));

        if (!card.getUser().getId().equals(userId)) {
            throw new RuntimeException("Unauthorized review attempt");
        }

        // Save review history
        FlashcardReview review = FlashcardReview.builder()
                .flashcard(card)
                .user(card.getUser())
                .rating(quality)
                .intervalBefore(card.getIntervalDays())
                .easeFactorBefore(card.getEaseFactor())
                .build();

        // SM-2 Algorithm
        double oldEf = card.getEaseFactor();
        int oldInterval = card.getIntervalDays();
        int oldReps = card.getReps();

        // 1. Update Ease Factor
        double newEf = oldEf + (0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02));
        if (newEf < 1.3) newEf = 1.3;
        card.setEaseFactor(newEf);

        // 2. Update Interval and Repetitions
        int newInterval;
        int newReps;

        if (quality < 3) {
            newInterval = 1;
            newReps = 0;
        } else {
            if (oldReps == 0) {
                newInterval = 1;
            } else if (oldReps == 1) {
                newInterval = 6;
            } else {
                newInterval = (int) Math.round(oldInterval * oldEf);
            }
            newReps = oldReps + 1;
        }

        card.setIntervalDays(newInterval);
        card.setReps(newReps);
        card.setDueDate(OffsetDateTime.now().plusDays(newInterval));
        card.setLastReviewedAt(OffsetDateTime.now());

        review.setNewInterval(newInterval);
        review.setNewEaseFactor(newEf);
        
        flashcardRepository.save(card);
        flashcardReviewRepository.save(review);
        
        log.info("Review processed. New interval: {}, Next due: {}", newInterval, card.getDueDate());
    }

    @Transactional
    public void updateFolder(UUID userId, UUID folderId, String name, String description) {
        NotebookFolder folder = notebookFolderRepository.findById(folderId)
                .orElseThrow(() -> new RuntimeException("Folder not found"));
        if (!folder.getUser().getId().equals(userId)) {
            throw new RuntimeException("Unauthorized");
        }
        folder.setName(name);
        folder.setDescription(description);
        notebookFolderRepository.save(folder);
    }

    @Transactional
    public void deleteFolder(UUID userId, UUID folderId) {
        NotebookFolder folder = notebookFolderRepository.findById(folderId)
                .orElseThrow(() -> new RuntimeException("Folder not found"));
        if (!folder.getUser().getId().equals(userId)) {
            throw new RuntimeException("Unauthorized");
        }
        // Xóa tất cả các mục trong folder này
        userNotebookRepository.deleteByFolderId(folderId);
        // Xóa folder
        notebookFolderRepository.delete(folder);
    }

    @Transactional
    public void deleteNotebookItem(UUID userId, UUID id) {
        UserNotebook item = userNotebookRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Item not found"));
        if (!item.getUser().getId().equals(userId)) {
            throw new RuntimeException("Unauthorized");
        }
        
        // Đồng thời xóa Flashcard liên quan trong hệ thống SRS
        flashcardRepository.findByUserIdAndItemTypeAndItemId(userId, item.getItemType(), item.getItemId())
                .ifPresent(flashcardRepository::delete);
                
        userNotebookRepository.delete(item);
    }

    @Transactional
    public void updateItemNote(UUID userId, UUID id, String note) {
        UserNotebook item = userNotebookRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Item not found"));
        if (!item.getUser().getId().equals(userId)) {
            throw new RuntimeException("Unauthorized");
        }
        item.setNote(note);
        userNotebookRepository.save(item);
    }

    public Page<FlashcardResponse> getFlashcardsForReview(UUID userId, UUID folderId, boolean srsMode, Pageable pageable) {
        List<Flashcard> cards = flashcardRepository.findAllByUserId(userId);
        
        if (folderId != null) {
            java.util.Set<String> itemKeysInFolder = userNotebookRepository.findByFolderIdOrderByAddedAtDesc(folderId)
                    .stream()
                    .map(un -> un.getItemType() + ":" + un.getItemId())
                    .collect(Collectors.toSet());
            
            cards = cards.stream()
                    .filter(c -> itemKeysInFolder.contains(c.getItemType() + ":" + c.getItemId()))
                    .collect(Collectors.toList());
        }
        
        if (srsMode) {
            OffsetDateTime now = OffsetDateTime.now();
            cards = cards.stream()
                    .filter(c -> c.getDueDate().isBefore(now))
                    .collect(Collectors.toList());
        }
        
        List<FlashcardResponse> responses = cards.stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
                
        int start = (int) pageable.getOffset();
        int end = Math.min((start + pageable.getPageSize()), responses.size());
        
        if (start > responses.size()) return Page.empty(pageable);
        
        return new org.springframework.data.domain.PageImpl<>(
                responses.subList(start, end), 
                pageable, 
                responses.size()
        );
    }

    private FlashcardResponse mapToResponse(Flashcard card) {
        FlashcardResponse.FlashcardResponseBuilder builder = FlashcardResponse.builder()
                .id(card.getId())
                .itemType(card.getItemType())
                .itemId(card.getItemId())
                .dueDate(card.getDueDate())
                .intervalDays(card.getIntervalDays())
                .reps(card.getReps())
                .easeFactor(card.getEaseFactor());

        switch (card.getItemType()) {
            case KANJI:
                kanjiRepository.findById(card.getItemId()).ifPresent(k -> {
                    builder.word(k.getCharacter())
                           .reading(k.getOnyomi() != null && k.getOnyomi().length > 0 ? k.getOnyomi()[0] : "")
                           .meaning(k.getMeaningVi());
                });
                break;
            case VOCAB:
                vocabularyRepository.findById(card.getItemId()).ifPresent(v -> {
                    builder.word(v.getWordJa())
                           .reading(v.getReading())
                           .meaning(v.getMeaningVi());
                });
                break;
            case GRAMMAR:
                grammarPointRepository.findById(card.getItemId()).ifPresent(g -> {
                    builder.word(g.getPatternJa())
                           .reading("")
                           .meaning(g.getExplanationVi());
                });
                break;
            case CUSTOM:
                userNotebookRepository.findById(card.getItemId()).ifPresent(un -> {
                    builder.word(un.getCustomWord())
                           .reading(un.getCustomReading())
                           .meaning(un.getCustomMeaning());
                });
                break;
        }
        return builder.build();
    }

    private void validateItemExists(ItemType type, UUID id) {
        boolean exists = switch (type) {
            case KANJI -> kanjiRepository.existsById(id);
            case VOCAB -> vocabularyRepository.existsById(id);
            case GRAMMAR -> grammarPointRepository.existsById(id);
            case CUSTOM -> true;
        };
        if (!exists) {
            throw new RuntimeException("Target item not found: " + type + " with ID " + id);
        }
    }
}
