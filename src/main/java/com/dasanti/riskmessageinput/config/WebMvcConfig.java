package com.dasanti.riskmessageinput.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.ResourceUtils;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.File;
import java.io.FileNotFoundException;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    // 跨域

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedMethods("GET","POST","OPTIONS")
                .allowedOrigins("*")
                .allowedHeaders("*")
                .allowCredentials(true);
        WebMvcConfigurer.super.addCorsMappings(registry);
    }
    // 路径映射

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /*registry.addResourceHandler("/uploadFile/**")
                .addResourceLocations("file:D:/joe/devspace/uploadFile/");
        WebMvcConfigurer.super.addResourceHandlers(registry);*/
        String path = null;
        try {
            path = new File(ResourceUtils.getURL("").getPath()).getParent();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        registry.addResourceHandler("/**","/uploadFile/**")
                .addResourceLocations("classpath:/static/","file:"+ path+"/uploadFile/" );
        WebMvcConfigurer.super.addResourceHandlers(registry);
    }
}
