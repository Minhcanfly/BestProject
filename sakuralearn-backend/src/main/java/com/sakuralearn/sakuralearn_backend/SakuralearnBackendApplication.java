package com.sakuralearn.sakuralearn_backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@EnableJpaAuditing(auditorAwareRef = "auditAwareImpl")
@EnableAsync
public class SakuralearnBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(SakuralearnBackendApplication.class, args);
	}

}
