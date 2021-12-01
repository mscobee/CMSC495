/* Name: Mohammed Shaikh, Michael Scobee, Eddy Owings, Anthony Pede
 * CMSC 495
 * Capstone project
 * 
 * This java file is the class with the main method, and this allows for the application
 * to use and be run on the Spring Boot framework. It initializes the 
 * Spring Boot servlet and loads all the code we have built on it for the Cord Cutter application.
 * 
 * 
 */


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
