package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.UserNotebook;
import com.sakuralearn.sakuralearn_backend.entity.enums.ItemType;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;
import java.util.Optional;

@Repository
public interface UserNotebookRepository extends JpaRepository<UserNotebook, UUID> {
    Page<UserNotebook> findByUserId(UUID userId, Pageable pageable);
    Optional<UserNotebook> findByUserIdAndItemTypeAndItemId(UUID userId, ItemType itemType, UUID itemId);
    boolean existsByUserIdAndItemTypeAndItemId(UUID userId, ItemType itemType, UUID itemId);
    int countByFolderId(UUID folderId);
    java.util.List<UserNotebook> findByFolderIdOrderByAddedAtDesc(UUID folderId);
    
    @org.springframework.data.jpa.repository.Modifying
    @org.springframework.transaction.annotation.Transactional
    void deleteByFolderId(UUID folderId);
}
