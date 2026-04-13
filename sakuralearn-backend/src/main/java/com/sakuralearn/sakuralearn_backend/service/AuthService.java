package com.sakuralearn.sakuralearn_backend.service;

import com.sakuralearn.sakuralearn_backend.dto.request.LoginRequest;
import com.sakuralearn.sakuralearn_backend.dto.request.RegisterRequest;
import com.sakuralearn.sakuralearn_backend.dto.response.AuthResponse;
import com.sakuralearn.sakuralearn_backend.entity.Role;
import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.RoleRepository;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import com.sakuralearn.sakuralearn_backend.security.JwtUtils;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final AuthenticationManager authenticationManager;
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtUtils jwtUtils;

    public AuthResponse authenticateUser(LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        String jwt = jwtUtils.generateToken(userDetails);

        List<String> roles = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());

        return AuthResponse.builder()
                .token(jwt)
                .email(userDetails.getEmail())
                .fullName(userDetails.getFullName())
                .roles(roles)
                .build();
    }

    @Transactional
    public void registerUser(RegisterRequest signUpRequest) {
        if (userRepository.existsByEmail(signUpRequest.getEmail())) {
            throw new RuntimeException("Error: Email is already in use!");
        }

        User user = User.builder()
                .email(signUpRequest.getEmail())
                .passwordHash(passwordEncoder.encode(signUpRequest.getPassword()))
                .fullName(signUpRequest.getFullName())
                .build();

        Set<Role> roles = new HashSet<>();
        // Default role is STUDENT
        Role userRole = roleRepository.findByName("ROLE_STUDENT")
                .orElseThrow(() -> new RuntimeException("Error: Role is not found. Database might be empty."));
        roles.add(userRole);

        user.setRoles(roles);
        userRepository.save(user);
    }
}
