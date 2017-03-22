package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.domain.Role;
import com.xiaoyu.biz.service.IRoleService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@RestController
@RequestMapping("/role")
public class RoleController {
    @Resource
    private IRoleService roleService;
    /**
     * 获取所有可用角色
     */
    @RequestMapping("/json")
    public Object json(){
        List<Role> roleList = roleService.findAllRole();
        return roleList;
    }
}
