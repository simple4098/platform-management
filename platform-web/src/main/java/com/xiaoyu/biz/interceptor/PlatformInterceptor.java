package com.xiaoyu.biz.interceptor;


import com.alibaba.fastjson.JSON;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.support.message.MessageSource;
import com.xiaoyu.biz.support.util.PlatformUtil;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class PlatformInterceptor implements HandlerInterceptor {
	private static Logger logger = Logger.getLogger(PlatformInterceptor.class);
	@Override
	public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String no_auth = MessageSource.lan("NO_AUTH");
        String login_error = MessageSource.lan("LOGIN_ERROR");
        logger.info("=============PlatformInterceptor==============");
        logger.info("httpServletRequest url:"+httpServletRequest.getRequestURI());
        if (!PlatformUtil.isLogin(httpServletRequest)){
            String json = JSON.toJSONString(new Msg(false,login_error));
            returnJson(httpServletResponse,json);
            return false;
        }
        return true;
	}

	@Override
	public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

	}

    private void returnJson(HttpServletResponse response, String json) throws Exception{
        PrintWriter writer = null;
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=utf-8");
        try {
            writer = response.getWriter();
            writer.print(json);
        } catch (IOException e) {
            logger.error("response error",e);
        } finally {
            if (writer != null)
                writer.close();
        }
    }
}
