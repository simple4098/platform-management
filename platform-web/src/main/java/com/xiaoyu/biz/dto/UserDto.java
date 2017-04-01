package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.domain.UserRole;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public class UserDto extends User {

    private List<String> roleId;
    private List<UserRoleDto> roles;

    public List<UserRoleDto> getRoles() {
        return roles;
    }

    public void setRoles(List<UserRoleDto> roles) {
        this.roles = roles;
    }

    public List<String> getRoleId() {
        return roleId;
    }

    public void setRoleId(List<String> roleId) {
        this.roleId = roleId;
    }
}
