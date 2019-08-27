package com.xct.examinationsys;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.xct.examinationsys.dao")
public class ExaminationsysApplication {

    public static void main(String[] args) {
        SpringApplication.run(ExaminationsysApplication.class, args);
    }

}
