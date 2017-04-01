package com.xiaoyu.biz.service;

import com.xiaoyu.biz.dto.UserDto;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/29 0029
 * @version: v1.0.0
 */
public interface IUserRoleService {

    UserDto findUserRoleByUserId(String userId);
}
