package com.sakuralearn.sakuralearn_backend.repository;

import com.sakuralearn.sakuralearn_backend.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, UUID> {
    Optional<User> findByEmailAndIsDeletedFalse(String email);
    Optional<User> findByUsernameAndIsDeletedFalse(String username);
    Boolean existsByEmail(String email);
    Boolean existsByUsername(String username);

    @org.springframework.data.jpa.repository.Query("SELECT u FROM User u WHERE (LOWER(u.email) LIKE LOWER(CONCAT('%', :keyword, '%')) OR LOWER(u.username) LIKE LOWER(CONCAT('%', :keyword, '%'))) AND u.isDeleted = false")
    org.springframework.data.domain.Page<User> searchUsers(@org.springframework.data.repository.query.Param("keyword") String keyword, org.springframework.data.domain.Pageable pageable);
}
