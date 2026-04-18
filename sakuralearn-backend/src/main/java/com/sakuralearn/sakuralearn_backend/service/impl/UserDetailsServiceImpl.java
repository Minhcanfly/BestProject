package com.sakuralearn.sakuralearn_backend.service.impl;

import com.sakuralearn.sakuralearn_backend.entity.User;
import com.sakuralearn.sakuralearn_backend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.sakuralearn.sakuralearn_backend.security.UserDetailsImpl;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UserRepository userRepository;
    private final MessageSource messageSource;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmailAndIsDeletedFalse(email)
                .orElseThrow(() -> new UsernameNotFoundException(messageSource.getMessage("error.user.not_found", null, LocaleContextHolder.getLocale())));

        if (!user.getIsActive()) {
            throw new org.springframework.security.authentication.DisabledException(messageSource.getMessage("error.user.not_active", null, LocaleContextHolder.getLocale()));
        }

        return UserDetailsImpl.build(user);
    }
}
