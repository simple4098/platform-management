package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IUserDao;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.dto.LoginDto;
import com.xiaoyu.biz.service.ILoginService;
import com.xiaoyu.biz.support.util.PlatformUtil;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Service
public class LoginService implements ILoginService {
    @Resource
    private IUserDao userDao;

    @Override
    public String login(LoginDto loginDto) {

        if(loginDto!=null && (StringUtils.isEmpty(loginDto.getUserid()) || StringUtils.isEmpty(loginDto.getPassword()))){

            throw new RuntimeException("用户名,密码不能为空");
        }

        if(StringUtils.isEmpty(loginDto.getCaptcha())){
            throw new RuntimeException("验证码不能为空");
        }
        String captchaMd5 =  loginDto.getCaptcha().toLowerCase();
        if(loginDto.getSessionCaptcha() == null){
            throw new RuntimeException("验证码已过期,请刷新重试");
        }
        if(!captchaMd5.equals(loginDto.getSessionCaptcha().toLowerCase())){
            throw new RuntimeException("验证码输入错误");
        }

        User user =  userDao.findByUserIdAndUserPwd(loginDto.getUserid(), PlatformUtil.MD5(loginDto.getPassword()));
        if(user == null){
            throw new RuntimeException("用户名或密码错误");
        }else{
            String userStatus = user.getRowStatus();
            if(userStatus == null){
                throw new RuntimeException("您的账号状态异常,暂时无法使用,请联系超级管理员");
            }else if(userStatus .equals( "0")){
                String uid =   user.getId();
                return uid;
            }
            throw new RuntimeException("您的账号已被锁定,请联系超级管理员");
        }
    }

    /**
     * 退出
     * @param request
     * @return
     */
    public boolean logout(HttpServletRequest request){
        request.getSession().invalidate();
        return true;
    }
}
