package com.xiaoyu.biz.service;

import com.xiaoyu.biz.dto.LoginDto;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public interface ILoginService {

    String login(LoginDto loginDto);

    /**
     * 退出
     * @param request
     * @return
     */
     boolean logout(HttpServletRequest request);
}
