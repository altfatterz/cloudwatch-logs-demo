package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.aws.context.config.annotation.EnableContextInstanceData;

@SpringBootApplication
@EnableContextInstanceData
public class CloudWatchLogsDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(CloudWatchLogsDemoApplication.class, args);
	}

}


