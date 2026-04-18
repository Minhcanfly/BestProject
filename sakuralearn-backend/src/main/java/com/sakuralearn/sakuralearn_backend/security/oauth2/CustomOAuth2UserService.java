package com.sakuralearn.sakuralearn_backend.security.oauth2;

import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    @Override
    @Transactional
    public OAuth2User loadUser(OAuth2UserRequest oAuth2UserRequest) throws OAuth2AuthenticationException {
        OAuth2User oAuth2User = super.loadUser(oAuth2UserRequest);
        return processOAuth2User(oAuth2User);
    }

    private OAuth2User processOAuth2User(OAuth2User oAuth2User) {
        String email = oAuth2User.getAttribute("email");
        String name = oAuth2User.getAttribute("name");
        String picture = oAuth2User.getAttribute("picture");

        Optional<User> userOptional = userRepository.findByEmailAndIsDeletedFalse(email);
        User user;
        if (userOptional.isPresent()) {
            user = userOptional.get();
            // Update existing user info if needed
            user.setFullName(name);
            user.setAvatarUrl(picture);
        } else {
            // Register new user
            user = User.builder()
                    .email(email)
                    .username(email) // Using email as username for OAuth users
                    .passwordHash("") // No password for OAuth users
                    .fullName(name)
                    .avatarUrl(picture)
                    .isActive(true)
                    .emailVerified(true)
                    .build();

            Role userRole = roleRepository.findByName("STUDENT")
                    .orElseThrow(() -> new RuntimeException("Error: Role is not found."));
            user.setRoles(Collections.singleton(userRole));
        }

        userRepository.save(user);
        return oAuth2User;
    }
}
