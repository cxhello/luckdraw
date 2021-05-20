package com.cxhello.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.cxhello.example.mapper")
@SpringBootApplication
public class LuckDrawApplication {

    public static void main(String[] args) {
        SpringApplication.run(LuckDrawApplication.class, args);
    }

}
