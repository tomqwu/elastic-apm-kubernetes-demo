package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import co.elastic.apm.attach.ElasticApmAttacher;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		ElasticApmAttacher.attach();
		SpringApplication.run(DemoApplication.class, args);
	}

}
