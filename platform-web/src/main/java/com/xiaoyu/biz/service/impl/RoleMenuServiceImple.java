package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IRoleMenuDao;
import com.xiaoyu.biz.domain.RoleMenu;
import com.xiaoyu.biz.domain.UserRole;
import com.xiaoyu.biz.service.IRoleMenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Service
public class RoleMenuServiceImple implements IRoleMenuService {
    @Resource
    private IRoleMenuDao roleMenuDao;
    @Override
    public List<String> findRoleMenusByRoleIds(List<UserRole> userRoles) {
        StringBuffer stringBuffer = new StringBuffer();
        for(UserRole eur : userRoles){
            stringBuffer.append(eur.getRoleId()).append(",");
        }
        stringBuffer.deleteCharAt(stringBuffer.length()-1);
        return roleMenuDao.findByRoleId(stringBuffer.toString());
    }
}
