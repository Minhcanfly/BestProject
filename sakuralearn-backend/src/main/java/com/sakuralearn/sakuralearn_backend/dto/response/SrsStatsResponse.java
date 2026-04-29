package com.sakuralearn.sakuralearn_backend.dto.response;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class SrsStatsResponse {
    private int level1;
    private int level2;
    private int level3;
    private int level4;
    private int level5;
}
