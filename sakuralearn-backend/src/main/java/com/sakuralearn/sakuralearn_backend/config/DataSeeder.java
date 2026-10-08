package com.sakuralearn.sakuralearn_backend.config;

import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Profile;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.Collections;
import java.util.Locale;
import java.util.Optional;
import java.util.Set;

@Component
@RequiredArgsConstructor
@Slf4j
@Profile("dev")
public class DataSeeder implements CommandLineRunner {

    private static final int MINIMUM_DEVELOPMENT_PASSWORD_LENGTH = 12;
    private static final Set<String> WEAK_DEVELOPMENT_PASSWORDS = Set.of(
            "admin",
            "admin123",
            "changeme",
            "change-me",
            "password",
            "123456"
    );

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    @Value("${INITIAL_ADMIN_PASSWORD}")
    private String initialAdminPassword;

    @Override
    @Transactional
    public void run(String... args) throws Exception {
        validateInitialAdminPassword(initialAdminPassword);
        seedAdminUser();
    }

    static void validateInitialAdminPassword(String password) {
        String normalized = password == null ? "" : password.trim().toLowerCase(Locale.ROOT);
        if (!StringUtils.hasText(password)
                || password.trim().length() < MINIMUM_DEVELOPMENT_PASSWORD_LENGTH
                || WEAK_DEVELOPMENT_PASSWORDS.contains(normalized)) {
            throw new IllegalStateException(
                    "INITIAL_ADMIN_PASSWORD must contain at least 12 characters and must not be a known weak value"
            );
        }
    }

    private void seedAdminUser() {
        String adminEmail = "admin@sakuralearn.com";
        Optional<User> adminOptional = userRepository.findByEmailAndIsDeletedFalse(adminEmail);
        
        if (adminOptional.isEmpty()) {
            log.info("System initializing... Seeding default Admin account.");
            
            Role adminRole = roleRepository.findByName("ADMIN")
                    .orElseThrow(() -> new RuntimeException("Role ADMIN not found in database."));

            User admin = User.builder()
                    .email(adminEmail)
                    .username("admin")
                    .fullName("Sakura System Admin")
                    .passwordHash(passwordEncoder.encode(initialAdminPassword))
                    .roles(Collections.singleton(adminRole))
                    .isActive(true)
                    .emailVerified(true)
                    .build();

            userRepository.save(admin);
            log.info("Default Admin created with email: {}", adminEmail);
        } else {
            log.info("Admin account already exists.");
        }
    }
}
