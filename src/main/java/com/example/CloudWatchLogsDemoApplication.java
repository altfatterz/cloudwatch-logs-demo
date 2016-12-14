package com.example;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;

@SpringBootApplication
@RestController
@Slf4j
public class CloudWatchLogsDemoApplication {

	private static final Logger logger = LoggerFactory.getLogger(CloudWatchLogsDemoApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(CloudWatchLogsDemoApplication.class, args);
	}

	@GetMapping
	public String greeting() throws UnknownHostException {
		String host = InetAddress.getLocalHost().toString();
		String ip = host.substring(host.indexOf("/") + 1);
		logger.info("greeting from IP {}", ip);
		return "Greeting from IP " + ip +"";
	}

}


