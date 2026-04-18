package com.sakuralearn.sakuralearn_backend.controller;

import com.sakuralearn.sakuralearn_backend.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class VerificationController {

    private final AuthService authService;

    @GetMapping("/verify")
    public String verifyEmail(@RequestParam("token") String token, Model model) {
        boolean verified = authService.verifyEmail(token);
        
        if (verified) {
            model.addAttribute("title", "Xác thực thành công!");
            model.addAttribute("message", "Tài khoản của bạn đã được kích hoạt. Hãy quay lại ứng dụng để đăng nhập.");
            model.addAttribute("status", "success");
        } else {
            model.addAttribute("title", "Xác thực thất bại");
            model.addAttribute("message", "Mã xác thực không hợp lệ hoặc đã hết hạn. Vui lòng thử lại.");
            model.addAttribute("status", "error");
        }
        
        return "auth/verify-result";
    }
}
