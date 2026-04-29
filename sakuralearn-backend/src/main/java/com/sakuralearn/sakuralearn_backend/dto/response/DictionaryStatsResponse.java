package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import java.util.Map;

@Getter
@Setter
@Builder
public class DictionaryStatsResponse {
    private Map<String, Long> kanjiCounts;
    private Map<String, Long> vocabCounts;
    private Map<String, Long> grammarCounts;
}
