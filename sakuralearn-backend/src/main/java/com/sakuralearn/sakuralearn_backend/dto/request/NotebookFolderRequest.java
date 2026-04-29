package com.sakuralearn.sakuralearn_backend.dto.request;

import jakarta.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class NotebookFolderRequest {
    @NotBlank
    private String name;
    private String description;
}
