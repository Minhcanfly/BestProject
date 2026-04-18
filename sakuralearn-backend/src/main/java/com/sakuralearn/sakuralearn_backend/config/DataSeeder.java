package com.sakuralearn.sakuralearn_backend.config;

import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.Optional;

@Component
@RequiredArgsConstructor
@Slf4j
public class DataSeeder implements CommandLineRunner {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public void run(String... args) throws Exception {
        seedAdminUser();
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
                    .passwordHash(passwordEncoder.encode("admin123"))
                    .roles(Collections.singleton(adminRole))
                    .isActive(true)
                    .emailVerified(true)
                    .build();

            userRepository.save(admin);
            log.info("Default Admin created -> Email: {} | Password: {}", adminEmail, "admin123");
        } else {
            log.info("Admin account already exists.");
        }
    }
}
