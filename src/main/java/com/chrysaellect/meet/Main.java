package com.chrysaellect.meet;

import com.chrysaellect.meet.controller.AppController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.io.File;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan
public class Main extends SpringBootServletInitializer {

    public static void main(String[] args) {

        new File(AppController.uploadDirectory).mkdir();
        new File(AppController.uploadVideoDirectory).mkdir();
        new File(AppController.uploadPptDirectory).mkdir();
        new File(AppController.uploadPdfDirectory).mkdir();
        new File(AppController.uploadWordsDirectory).mkdir();
        new File(AppController.uploadSliderDirectory).mkdir();
        new File(AppController.uploadBlogsDirectory).mkdir();
        new File(AppController.uploadAssessmentDirectory ).mkdir();
        new File(AppController.uploadSummitDirectory ).mkdir();
        SpringApplication.run(Main.class, args);
    }
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder){
        return builder.sources(Main.class);
    }
    @Bean
    public ViewResolver viewResolver() {



        final InternalResourceViewResolver r = new InternalResourceViewResolver();
        r.setPrefix("/WEB-INF/jsp/views/");
        r.setSuffix(".jsp");
        return r;
    }
}
