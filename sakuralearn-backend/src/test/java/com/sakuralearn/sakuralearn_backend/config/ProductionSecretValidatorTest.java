package com.sakuralearn.sakuralearn_backend.config;

import org.junit.jupiter.api.Test;
import org.springframework.boot.DefaultApplicationArguments;
import org.springframework.mock.env.MockEnvironment;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

class ProductionSecretValidatorTest {

    @Test
    void rejectsMissingProductionSecretsWithoutPrintingValues() {
        ProductionSecretValidator validator = new ProductionSecretValidator(new MockEnvironment());

        IllegalStateException exception = assertThrows(
                IllegalStateException.class,
                () -> validator.run(new DefaultApplicationArguments())
        );

        assertTrue(exception.getMessage().contains("app.jwt.secret"));
        assertTrue(exception.getMessage().contains("spring.datasource.password"));
    }

    @Test
    void rejectsKnownPlaceholderAndWeakValues() {
        MockEnvironment environment = validEnvironment()
                .withProperty("spring.datasource.password", "password")
                .withProperty("app.jwt.secret", "replace-with-a-random-production-secret-value");

        IllegalStateException exception = assertThrows(
                IllegalStateException.class,
                () -> new ProductionSecretValidator(environment).run(new DefaultApplicationArguments())
        );

        assertTrue(exception.getMessage().contains("spring.datasource.password"));
        assertTrue(exception.getMessage().contains("app.jwt.secret"));
        assertTrue(!exception.getMessage().contains("replace-with-a-random-production-secret-value"));
    }

    @Test
    void acceptsNonPlaceholderProductionValues() {
        ProductionSecretValidator validator = new ProductionSecretValidator(validEnvironment());

        assertDoesNotThrow(() -> validator.run(new DefaultApplicationArguments()));
    }

    private MockEnvironment validEnvironment() {
        return new MockEnvironment()
                .withProperty("spring.datasource.password", "db-fixture-value-98")
                .withProperty("spring.ai.openai.api-key", "openai-fixture-value-98")
                .withProperty("spring.ai.google.genai.api-key", "genai-fixture-value-98")
                .withProperty("spring.security.oauth2.client.registration.google.client-id", "oauth-client-fixture-98")
                .withProperty("spring.security.oauth2.client.registration.google.client-secret", "oauth-secret-fixture-98")
                .withProperty("app.jwt.secret", "jwt-fixture-value-with-more-than-thirty-two-characters-98")
                .withProperty("app.minio.access-key", "minio-access-fixture-98")
                .withProperty("app.minio.secret-key", "minio-secret-fixture-98")
                .withProperty("app.ai.grok.api-key", "grok-fixture-value-98");
    }
}
