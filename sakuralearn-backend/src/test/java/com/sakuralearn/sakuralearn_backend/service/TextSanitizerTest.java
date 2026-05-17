package com.sakuralearn.sakuralearn_backend.service;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class TextSanitizerTest {

    private final TextSanitizer sanitizer = new TextSanitizer();

    @Test
    void stripsHtmlTagsAndTrimsText() {
        assertThat(sanitizer.sanitizeNullable("  <script>alert(1)</script> Hello <b>world</b>  "))
                .isEqualTo("Hello world");
    }

    @Test
    void preservesNullValues() {
        assertThat(sanitizer.sanitizeNullable(null)).isNull();
    }
}
