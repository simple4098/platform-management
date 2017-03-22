package com.xiaoyu.biz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.AdviceMode;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement(proxyTargetClass = true, mode = AdviceMode.ASPECTJ)
@ServletComponentScan
public class PlatformManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlatformManagementApplication.class, args);
	}
}
