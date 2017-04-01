package com.xiaoyu.biz.support.converter;

import com.xiaoyu.biz.dao.IUserRoleDao;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.dto.UserDto;
import com.xiaoyu.biz.dto.UserRoleDto;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
@Component
public class UserDtoConverter implements Converter<User, UserDto> {
    @Resource
    private IUserRoleDao userRoleDao;
    @Override
    public UserDto convert(User user) {
        UserDto userDto = new UserDto();
        List<UserRoleDto> roles = new ArrayList<>();
        BeanUtils.copyProperties(user,userDto);
        List<Object[]> userRoleDtoByUserId = userRoleDao.findUserRoleDtoByUserId(user.getId());
        for (Object[] o: userRoleDtoByUserId) {
            UserRoleDto userRoleDto = new UserRoleDto();
            userRoleDto.setId(o[0].toString());
            userRoleDto.setRoleName(o[1].toString());
            roles.add(userRoleDto);
        }
        userDto.setRoles(roles);
        return userDto;
    }
}
