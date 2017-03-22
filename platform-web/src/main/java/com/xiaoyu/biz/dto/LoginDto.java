package com.xiaoyu.biz.dto;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public class LoginDto {
    private String userid;
    private String password;
    private String captcha;
    private String sessionCaptcha;

    public String getSessionCaptcha() {
        return sessionCaptcha;
    }

    public void setSessionCaptcha(String sessionCaptcha) {
        this.sessionCaptcha = sessionCaptcha;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }
}
