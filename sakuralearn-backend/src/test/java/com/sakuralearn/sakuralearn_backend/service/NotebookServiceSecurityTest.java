package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.entity.NotebookFolder;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import com.sakuralearn.sakuralearn_backend.exception.ForbiddenException;
import com.sakuralearn.sakuralearn_backend.repository.FlashcardRepository;
import com.sakuralearn.sakuralearn_backend.repository.FlashcardReviewRepository;
import com.sakuralearn.sakuralearn_backend.repository.GrammarPointRepository;
import com.sakuralearn.sakuralearn_backend.repository.KanjiRepository;
import com.sakuralearn.sakuralearn_backend.repository.NotebookFolderRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserNotebookRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.repository.VocabularyRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class NotebookServiceSecurityTest {

    @Mock private UserNotebookRepository userNotebookRepository;
    @Mock private FlashcardRepository flashcardRepository;
    @Mock private FlashcardReviewRepository flashcardReviewRepository;
    @Mock private UserRepository userRepository;
    @Mock private SrsCalculatorService srsCalculatorService;
    @Mock private TextSanitizer textSanitizer;
    @Mock private NotebookFolderRepository notebookFolderRepository;
    @Mock private KanjiRepository kanjiRepository;
    @Mock private VocabularyRepository vocabularyRepository;
    @Mock private GrammarPointRepository grammarPointRepository;

    @InjectMocks
    private NotebookService notebookService;

    @Test
    void getFolderItemsRejectsFoldersOwnedByAnotherUser() {
        UUID currentUserId = UUID.randomUUID();
        UUID ownerId = UUID.randomUUID();
        UUID folderId = UUID.randomUUID();
        when(notebookFolderRepository.findById(folderId)).thenReturn(Optional.of(folder(folderId, ownerId)));

        assertThatThrownBy(() -> notebookService.getFolderItems(currentUserId, folderId))
                .isInstanceOf(ForbiddenException.class);
    }

    @Test
    void addToNotebookRejectsFolderOwnedByAnotherUserBeforeSaving() {
        UUID currentUserId = UUID.randomUUID();
        UUID ownerId = UUID.randomUUID();
        UUID folderId = UUID.randomUUID();
        UUID itemId = UUID.randomUUID();

        when(userNotebookRepository.existsByUserIdAndItemTypeAndItemId(currentUserId, ItemType.KANJI, itemId))
                .thenReturn(false);
        when(kanjiRepository.existsById(itemId)).thenReturn(true);
        when(notebookFolderRepository.findById(folderId)).thenReturn(Optional.of(folder(folderId, ownerId)));

        assertThatThrownBy(() -> notebookService.addToNotebook(currentUserId, ItemType.KANJI, itemId, "note", folderId))
                .isInstanceOf(ForbiddenException.class);

        verify(userNotebookRepository, never()).save(org.mockito.ArgumentMatchers.any());
    }

    private NotebookFolder folder(UUID folderId, UUID ownerId) {
        return NotebookFolder.builder()
                .id(folderId)
                .user(User.builder().id(ownerId).build())
                .name("Folder")
                .build();
    }
}
