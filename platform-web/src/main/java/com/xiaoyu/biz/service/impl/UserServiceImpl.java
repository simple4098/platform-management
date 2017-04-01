package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IUserDao;
import com.xiaoyu.biz.dao.IUserRoleDao;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.domain.UserRole;
import com.xiaoyu.biz.dto.UserDto;
import com.xiaoyu.biz.service.IUserService;
import com.xiaoyu.biz.support.converter.UserDtoConverter;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.support.util.Pinyin4jKit;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

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
    @Resource
    private IUserRoleDao userRoleDao;
    @Resource
    private UserDtoConverter userDtoConverter;

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

    @Override
    @Transactional
    public void updateOrSaveUser(UserDto userDto) {
        String userName = userDto.getUserName();
        if (StringUtils.isEmpty(userName)){
            userDto.setShortPinyin(Pinyin4jKit.converterToFirstSpell(userName));
            userDto.setPinyin(Pinyin4jKit.converterToSpell(userName));
        }
        User user = userDao.findById(userDto.getId());
        BeanUtils.copyProperties(userDto,user);
        userDao.save(user);
        List<String> roleList = userDto.getRoleId();
        if(CollectionUtils.isEmpty(roleList)){
            throw new RuntimeException("无效的角色");
        }
        userRoleDao.deleteByUserId(userDto.getId());
        UserRole userRole = null;
        for(String  roleId : roleList){
            userRole = new UserRole();
            userRole.setRoleId(roleId);
            userRole.setUserId(userDto.getId());
            userRoleDao.save(userRole);
        }
    }

    @Override
    public PageModel<UserDto> findUserPage(UserDto userDto, Pageable pageable) {
        Page<User> page = null;
        if (StringUtils.isEmpty(userDto.getUserName())){
            page = userDao.findUserByPage(pageable);
        }else {
            page = userDao.findByUserNameContaining(userDto.getUserName(),pageable);
        }
        List<User> users = page.getContent();
        Page<UserDto> pluginDtoPage = page.map(userDtoConverter);
        PageModel<UserDto> from = PageModel.from(pluginDtoPage);
        return from;
    }
}
