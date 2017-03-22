package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IUserDao;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Service
public class UserServiceImpl implements IUserService {
    @Resource
    private IUserDao userDao;

    @Override
    public User findById(String userId) {
        return userDao.getOne(userId);
    }

    @Override
    public User getSessionUser(HttpServletRequest request) {
        Object uid = request.getSession().getAttribute("uid");
        if(uid == null){
            throw new RuntimeException("您的登录已过期,请重新登录");
        }
        User user = userDao.findById(uid.toString());
        return user;
    }
}
