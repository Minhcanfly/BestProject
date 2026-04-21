package com.sakuralearn.sakuralearn_backend.config;

import com.google.genai.Client;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.ai.google.genai.GoogleGenAiChatModel;
import org.springframework.ai.google.genai.GoogleGenAiChatOptions;
import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.ai.openai.OpenAiChatOptions;
import org.springframework.ai.openai.api.OpenAiApi;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AiConfig {

    @Bean
    public ObjectMapper objectMapper() {
        return new ObjectMapper();
    }

    @Value("${spring.ai.openai.api-key}")
    private String openAiKey;

    @Value("${spring.ai.google.genai.api-key}")
    private String googleKey;

    @Value("${app.ai.grok.api-key}")
    private String grokKey;

    @Value("${app.ai.grok.base-url}")
    private String grokBaseUrl;

    @Bean
    public OpenAiChatModel gpt4oChatModel() {
        return OpenAiChatModel.builder()
            .openAiApi(OpenAiApi.builder()
                .apiKey(openAiKey)
                .build())
            .defaultOptions(OpenAiChatOptions.builder()
                .model("gpt-4o")
                .temperature(0.7)
                .build())
            .build();
    }

    @Bean
    public GoogleGenAiChatModel geminiChatModel() {
        return GoogleGenAiChatModel.builder()
            .genAiClient(Client.builder().apiKey(googleKey).build())
            .defaultOptions(GoogleGenAiChatOptions.builder()
                .model("gemini-1.5-pro")
                .temperature(0.7)
                .build())
            .build();
    }

    @Bean
    public OpenAiChatModel grokChatModel() {
        return OpenAiChatModel.builder()
            .openAiApi(OpenAiApi.builder()
                .baseUrl(grokBaseUrl)
                .apiKey(grokKey)
                .build())
            .defaultOptions(OpenAiChatOptions.builder()
                .model("grok-1")
                .temperature(0.7)
                .build())
            .build();
    }
}
