package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.NotebookFolder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.UUID;

@Repository
public interface NotebookFolderRepository extends JpaRepository<NotebookFolder, UUID> {
    List<NotebookFolder> findByUserIdOrderByCreatedAtDesc(UUID userId);
}
