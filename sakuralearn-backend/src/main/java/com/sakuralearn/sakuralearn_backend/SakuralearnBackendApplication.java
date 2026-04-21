package com.sakuralearn.sakuralearn_backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableAsync;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

@SpringBootApplication
@EnableJpaAuditing(auditorAwareRef = "auditAwareImpl")
@EnableAsync
public class SakuralearnBackendApplication {

	public static void main(String[] args) {
		loadEnv();
		SpringApplication.run(SakuralearnBackendApplication.class, args);
	}

	private static void loadEnv() {
		// Look for .env in current dir and parent dir
		File envFile = new File(".env");
		if (!envFile.exists()) {
			envFile = new File("../.env");
		}

		if (envFile.exists()) {
			try (BufferedReader reader = new BufferedReader(new FileReader(envFile))) {
				String line;
				while ((line = reader.readLine()) != null) {
					line = line.trim();
					if (line.isEmpty() || line.startsWith("#")) continue;
					String[] parts = line.split("=", 2);
					if (parts.length == 2) {
						String key = parts[0].trim();
						String value = parts[1].trim();
						// Remove quotes if present
						if (value.startsWith("\"") && value.endsWith("\"")) {
							value = value.substring(1, value.length() - 1);
						}
						System.setProperty(key, value);
					}
				}
				System.out.println("✅ .env file loaded successfully from: " + envFile.getAbsolutePath());
			} catch (Exception e) {
				System.err.println("❌ Could not load .env file: " + e.getMessage());
			}
		} else {
			System.out.println("⚠️ No .env file found. Using system environment variables.");
		}
	}

}
