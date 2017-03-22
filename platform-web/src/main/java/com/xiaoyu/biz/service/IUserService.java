package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.User;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public interface IUserService {

    User findById(String userId);

    User getSessionUser(HttpServletRequest request);
}
