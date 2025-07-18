package com.movie;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.movie.models.User;
import com.movie.services.UserService;

@SpringBootApplication
public class MovieBookingApplication {
	
	private static final Logger log = LoggerFactory.getLogger(MovieBookingApplication	.class);

	public static void main(String[] args) {
		SpringApplication.run(MovieBookingApplication.class, args);
	}
	
	@Bean
	public CommandLineRunner demo(UserService srv) {
	    return (args) -> {
	    	if(srv.countUser()==0) {
	    		User admin=new User();
	    		admin.setUserid("admin");
	    		admin.setPwd("admin");
	    		admin.setUname("Administrator");
	    		admin.setRole("Admin");
	    		srv.saveUser(admin);
	    		log.info("Admin user created successfully");
	    	}
	    };
	}

}
