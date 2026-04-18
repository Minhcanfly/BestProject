package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.AuthResponse;
import com.sakuralearn.sakuralearn_backend.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface AuthMapper {

    @Mapping(target = "token", ignore = true)
    @Mapping(target = "roles", ignore = true)
    AuthResponse toAuthResponse(User user);
}
