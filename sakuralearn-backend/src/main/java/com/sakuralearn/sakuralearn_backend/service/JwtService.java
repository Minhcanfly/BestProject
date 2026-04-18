package com.sakuralearn.sakuralearn_backend.service;

import org.springframework.security.core.userdetails.UserDetails;
import io.jsonwebtoken.Claims;
import java.util.Date;
import java.util.function.Function;

public interface JwtService {
    String extractUsername(String token);
    Date extractExpiration(String token);
    <T> T extractClaim(String token, Function<Claims, T> claimsResolver);
    String generateToken(UserDetails userDetails);
    Boolean validateToken(String token, UserDetails userDetails);
}
