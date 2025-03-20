package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Hello {

     @GetMapping("/hello")
    public String hello() {
        return "Spring Boot 서버가 포트 7878에서 실행 중입니다!";
    }
    
}
