package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IRoleDao;
import com.xiaoyu.biz.domain.Role;
import com.xiaoyu.biz.service.IRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Service
public class RoleServiceImpl implements IRoleService {
    @Resource
    private IRoleDao roleDao;
    @Override
    public List<Role> findAllRole() {
        return roleDao.findAll();
    }
}
