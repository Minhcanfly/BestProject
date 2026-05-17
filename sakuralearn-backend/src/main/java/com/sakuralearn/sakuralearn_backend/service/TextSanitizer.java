package com.sakuralearn.sakuralearn_backend.service;

import org.springframework.stereotype.Component;

@Component
public class TextSanitizer {

    public String sanitizeNullable(String value) {
        if (value == null) {
            return null;
        }

        String withoutExecutableBlocks = value
                .replaceAll("(?is)<script[^>]*>.*?</script>", "")
                .replaceAll("(?is)<style[^>]*>.*?</style>", "");
        String withoutHtmlTags = withoutExecutableBlocks.replaceAll("<[^>]*>", "");
        String withoutControlCharacters = withoutHtmlTags.replaceAll("[\\p{Cntrl}&&[^\r\n\t]]", "");
        return withoutControlCharacters.trim();
    }
}
