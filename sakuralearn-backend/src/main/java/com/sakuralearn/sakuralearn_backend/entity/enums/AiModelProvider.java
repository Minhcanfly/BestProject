package com.sakuralearn.sakuralearn_backend.entity.enums;

public enum AiModelProvider {
    GPT_4O("gpt-4o"),
    GROK_1("grok-1"),
    GEMINI_PRO("gemini-1.5-pro");

    private final String modelName;

    AiModelProvider(String modelName) {
        this.modelName = modelName;
    }

    public String getModelName() {
        return modelName;
    }

    public static AiModelProvider fromString(String text) {
        for (AiModelProvider b : AiModelProvider.values()) {
            if (b.name().equalsIgnoreCase(text) || b.modelName.equalsIgnoreCase(text)) {
                return b;
            }
        }
        return GPT_4O; // Default
    }
}
