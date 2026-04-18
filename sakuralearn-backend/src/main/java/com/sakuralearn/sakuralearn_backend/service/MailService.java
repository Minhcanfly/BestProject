package com.sakuralearn.sakuralearn_backend.service;

import java.util.Map;

public interface MailService {
    void sendHtmlEmail(String to, String subject, String templateName, Map<String, Object> variables);
}
