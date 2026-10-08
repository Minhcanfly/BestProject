package com.sakuralearn.sakuralearn_backend.config;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class SensitiveConfigurationTest {

    @Test
    void baseConfigurationRequiresSensitiveValuesWithoutFallbacks() throws IOException {
        String yaml;
        try (InputStream input = getClass().getResourceAsStream("/application.yml")) {
            assertNotNull(input);
            yaml = new String(input.readAllBytes(), StandardCharsets.UTF_8);
        }

        List<String> requiredPlaceholders = List.of(
                "${DB_PASSWORD}",
                "${OPENAI_API_KEY}",
                "${GOOGLE_GENAI_API_KEY}",
                "${GOOGLE_CLIENT_ID}",
                "${GOOGLE_CLIENT_SECRET}",
                "${JWT_SECRET}",
                "${MINIO_ACCESS_KEY}",
                "${MINIO_SECRET_KEY}",
                "${GROK_API_KEY}"
        );

        requiredPlaceholders.forEach(placeholder -> assertTrue(yaml.contains(placeholder)));
        assertFalse(yaml.matches("(?s).*\\$\\{(?:DB_PASSWORD|OPENAI_API_KEY|GOOGLE_GENAI_API_KEY|"
                + "GOOGLE_CLIENT_ID|GOOGLE_CLIENT_SECRET|JWT_SECRET|MINIO_ACCESS_KEY|"
                + "MINIO_SECRET_KEY|GROK_API_KEY):[^}]+}.*"));
    }

    @Test
    void dataSeederIsDevOnlyAndHasNoPasswordFallback() throws NoSuchFieldException {
        Profile profile = DataSeeder.class.getAnnotation(Profile.class);
        assertNotNull(profile);
        assertEquals(List.of("dev"), List.of(profile.value()));

        Field passwordField = DataSeeder.class.getDeclaredField("initialAdminPassword");
        Value value = passwordField.getAnnotation(Value.class);
        assertNotNull(value);
        assertEquals("${INITIAL_ADMIN_PASSWORD}", value.value());
    }

    @Test
    void dataSeederRejectsBlankAndKnownWeakPasswords() {
        assertThrows(IllegalStateException.class, () -> DataSeeder.validateInitialAdminPassword(""));
        assertThrows(IllegalStateException.class, () -> DataSeeder.validateInitialAdminPassword("admin123"));
        assertDoesNotThrow(() -> DataSeeder.validateInitialAdminPassword("local-only-strong-value"));
    }
}
