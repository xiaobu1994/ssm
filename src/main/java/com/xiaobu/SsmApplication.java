package com.xiaobu;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import tk.mybatis.spring.annotation.MapperScan;




@EnableCaching
@EnableAsync
@EnableScheduling
@SpringBootApplication
@Slf4j
@MapperScan(basePackages = "com.xiaobu.mapper")
public class SsmApplication implements WebMvcConfigurer, CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(SsmApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        log.info("服务启动成功。。。。");
    }


}
