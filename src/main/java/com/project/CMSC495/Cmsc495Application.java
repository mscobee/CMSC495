package com.project.CMSC495;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Cmsc495Application extends SpringBootServletInitializer {
  public static void main(String[] args) {
      SpringApplication.run(Cmsc495Application.class, args);
  }

  @Override
  protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
      return builder.sources(Cmsc495Application.class);
  }
}
