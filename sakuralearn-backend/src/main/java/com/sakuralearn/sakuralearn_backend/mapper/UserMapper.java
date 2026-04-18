package com.sakuralearn.sakuralearn_backend.mapper;

import com.sakuralearn.sakuralearn_backend.dto.response.ProfileResponse;
import com.sakuralearn.sakuralearn_backend.dto.response.UserAdminResponse;
import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.ReportingPolicy;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface UserMapper {

    ProfileResponse toProfileResponse(User user);

    @Mapping(target = "roles", source = "roles", qualifiedByName = "mapRolesToStrings")
    UserAdminResponse toUserAdminResponse(User user);

    @Named("mapRolesToStrings")
    default List<String> mapRolesToStrings(Set<Role> roles) {
        if (roles == null) return List.of();
        return roles.stream()
                .map(Role::getName)
                .collect(Collectors.toList());
    }
}
