package com.xiaoyu.biz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
@ServletComponentScan
public class PlatformManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlatformManagementApplication.class, args);
	}
}
