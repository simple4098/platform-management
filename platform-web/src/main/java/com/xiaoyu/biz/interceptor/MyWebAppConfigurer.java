package com.xiaoyu.biz.interceptor;

import com.xiaoyu.biz.conf.ApplicationConf;
import org.apache.log4j.Logger;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.annotation.Resource;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Configuration
public class MyWebAppConfigurer extends WebMvcConfigurerAdapter {
    private static Logger logger = Logger.getLogger(PlatformInterceptor.class);
    @Resource
    private ApplicationConf applicationConf;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        String authUrls = applicationConf.getAuthUrls();
        logger.info("********************拦截器*************************");
        logger.info(authUrls);
        String[] urls = authUrls.split(",");
        // 多个拦截器组成一个拦截器链
        // addPathPatterns 用于添加拦截规则
        // excludePathPatterns 用户排除拦截
        registry.addInterceptor(new PlatformInterceptor()).addPathPatterns(urls);
        super.addInterceptors(registry);
    }
}
