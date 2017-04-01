package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.UserRole;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/29 0029
 * @version: v1.0.0
 */
public class UserRoleDto extends UserRole {

    private String roleName;

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
