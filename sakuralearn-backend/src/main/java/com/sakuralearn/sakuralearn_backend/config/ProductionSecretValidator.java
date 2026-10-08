package com.sakuralearn.sakuralearn_backend.config;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * Rejects missing and obviously unsafe production credentials without ever
 * including their values in logs or exception messages.
 */
@Component
@Profile("prod")
public class ProductionSecretValidator implements ApplicationRunner {

    private static final Set<String> WEAK_VALUES = Set.of(
            "admin",
            "admin123",
            "changeme",
            "change-me",
            "dummy",
            "minioadmin",
            "password",
            "placeholder",
            "secret",
            "test",
            "123456"
    );

    private static final List<SecretRequirement> REQUIREMENTS = List.of(
            new SecretRequirement("spring.datasource.password", 8),
            new SecretRequirement("spring.ai.openai.api-key", 8),
            new SecretRequirement("spring.ai.google.genai.api-key", 8),
            new SecretRequirement("spring.security.oauth2.client.registration.google.client-id", 8),
            new SecretRequirement("spring.security.oauth2.client.registration.google.client-secret", 8),
            new SecretRequirement("app.jwt.secret", 32),
            new SecretRequirement("app.minio.access-key", 8),
            new SecretRequirement("app.minio.secret-key", 8),
            new SecretRequirement("app.ai.grok.api-key", 8)
    );

    private final Environment environment;

    public ProductionSecretValidator(Environment environment) {
        this.environment = environment;
    }

    @Override
    public void run(ApplicationArguments args) {
        List<String> unsafeProperties = new ArrayList<>();

        for (SecretRequirement requirement : REQUIREMENTS) {
            String value = environment.getProperty(requirement.propertyName());
            if (isUnsafe(value, requirement.minimumLength())) {
                unsafeProperties.add(requirement.propertyName());
            }
        }

        if (!unsafeProperties.isEmpty()) {
            throw new IllegalStateException(
                    "Production secret validation failed for properties: "
                            + String.join(", ", unsafeProperties)
            );
        }
    }

    private boolean isUnsafe(String value, int minimumLength) {
        if (!StringUtils.hasText(value) || value.trim().length() < minimumLength) {
            return true;
        }

        String normalized = value.trim().toLowerCase(Locale.ROOT);
        return WEAK_VALUES.contains(normalized)
                || normalized.startsWith("dummy-")
                || normalized.startsWith("test-")
                || normalized.startsWith("your-")
                || normalized.contains("replace-with");
    }

    private record SecretRequirement(String propertyName, int minimumLength) {
    }
}
