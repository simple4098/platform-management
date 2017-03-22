package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.constants.Constants;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.dto.LoginDto;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.service.ILoginService;
import com.xiaoyu.biz.service.IUserService;
import com.xiaoyu.biz.support.util.PlatformUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * DESC : 登陆
 * @author : 番茄木-ZLin
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
public class LoginController  {
    @Resource
    private ILoginService loginService;
    @Resource
    private IUserService userService;

    @RequestMapping("isLogin")
    @ResponseBody
    public Object isLogin(HttpServletRequest request){
        return new Msg(PlatformUtil.isLogin(request));
    }

    @RequestMapping("doLogin")
    @ResponseBody
    public Object doLogin(HttpServletRequest request, LoginDto loginDto){
        try {
            String sessionCaptchaMd5 = request.getSession().getAttribute(Constants.RANDOM_CODE).toString();
            loginDto.setSessionCaptcha(sessionCaptchaMd5);
            String uid = loginService.login(loginDto);
            request.getSession().setAttribute("uid",uid);
            return new Msg(true);
        } catch (Exception e) {
            return new Msg(false,e.getMessage());
        }
    }
    /**
     * 登出控制器
     */
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        loginService.logout(request);
        return "redirect:#login";
    }
    /**
     * 登录导航页
     */
    @RequestMapping("/login")
    public String login(){
        return "redirect:#login";
    }
    /**
     * 获取当前用户
     */
    @RequestMapping("/getUser")
    @ResponseBody
    public Object getUser(HttpServletRequest request){
        User user = userService.getSessionUser(request);
        return  new Msg(true, "OK",user);
    }

}
