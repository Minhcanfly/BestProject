package com.sakuralearn.sakuralearn_backend.security.oauth2;

import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
@Slf4j
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    @Override
    @Transactional
    public OAuth2User loadUser(OAuth2UserRequest oAuth2UserRequest) throws OAuth2AuthenticationException {
        log.info("Loading user from OAuth2 provider: {}", oAuth2UserRequest.getClientRegistration().getRegistrationId());
        OAuth2User oAuth2User = super.loadUser(oAuth2UserRequest);
        try {
            return processOAuth2User(oAuth2User);
        } catch (Exception ex) {
            log.error("Error processing OAuth2 user: {}", ex.getMessage(), ex);
            throw new OAuth2AuthenticationException(ex.getMessage());
        }
    }

    private OAuth2User processOAuth2User(OAuth2User oAuth2User) {
        String email = oAuth2User.getAttribute("email");
        log.info("Processing OAuth2 user with email: {}", email);
        
        String name = oAuth2User.getAttribute("name");
        String picture = oAuth2User.getAttribute("picture");

        Optional<User> userOptional = userRepository.findByEmailAndIsDeletedFalse(email);
        User user;
        if (userOptional.isPresent()) {
            user = userOptional.get();
            log.info("Existing user found. Updating info.");
            user.setFullName(name);
            user.setAvatarUrl(picture);
        } else {
            log.info("New OAuth2 user. Registering...");
            user = User.builder()
                    .email(email)
                    .username(email)
                    .passwordHash("")
                    .fullName(name)
                    .avatarUrl(picture)
                    .isActive(true)
                    .emailVerified(true)
                    .build();

            Role userRole = roleRepository.findByName("STUDENT")
                    .orElseThrow(() -> {
                        log.error("STUDENT role not found in database!");
                        return new RuntimeException("Error: Role is not found.");
                    });
            user.setRoles(Collections.singleton(userRole));
        }

        userRepository.save(user);
        return oAuth2User;
    }
}
