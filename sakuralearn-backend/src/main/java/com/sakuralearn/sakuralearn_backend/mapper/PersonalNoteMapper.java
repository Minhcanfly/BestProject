package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.PersonalNoteResponse;
import com.sakuralearn.sakuralearn_backend.entity.PersonalNote;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

import java.util.List;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface PersonalNoteMapper {
    @Mapping(target = "userId", source = "user.id")
    @Mapping(target = "lessonBlockId", source = "lessonBlock.id")
    PersonalNoteResponse toResponse(PersonalNote note);
    
    List<PersonalNoteResponse> toResponseList(List<PersonalNote> list);
}
