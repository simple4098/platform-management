package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IUserDao;
import com.xiaoyu.biz.dao.IUserRoleDao;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.domain.UserRole;
import com.xiaoyu.biz.dto.UserDto;
import com.xiaoyu.biz.service.IUserRoleService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/29 0029
 * @version: v1.0.0
 */
@Service
public class UserRoleServiceImple implements IUserRoleService {
    @Resource
    private IUserRoleDao userRoleDao;
    @Resource
    private IUserDao userDao;
    @Override
    public UserDto findUserRoleByUserId(String userId) {
        UserDto userDto = new UserDto();
        List<String> roleListId = new ArrayList<>();
        List<UserRole> userRoles = userRoleDao.findByUserId(userId);
        User user = userDao.findById(userId);
        BeanUtils.copyProperties(user,userDto);
        for (UserRole userRole:userRoles) {
            roleListId.add(userRole.getRoleId());
        }
        userDto.setRoleId(roleListId);
        return userDto;
    }
}
