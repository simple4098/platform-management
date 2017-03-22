package com.xiaoyu.biz.conf;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

/**
 * creator simple
 * data 2016/11/8 0008.
 */
@ConfigurationProperties(prefix = "xiaoyu")
@Configuration
public class ApplicationConf  {
    private String authUrls;

    public String getAuthUrls() {
        return authUrls;
    }

    public void setAuthUrls(String authUrls) {
        this.authUrls = authUrls;
    }
}
