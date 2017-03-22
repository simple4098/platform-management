package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.domain.Menu;
import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.dto.MenuDto;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.service.IMenuService;
import com.xiaoyu.biz.service.IUserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p> 菜单控制器 </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@RestController
@RequestMapping("/menu")
public class MenuController {
    @Resource
    private IUserService userService;
    @Resource
    private IMenuService menuService;

    /**
     * 获取菜单树,用户根据用户权限加载菜单
     */
    @RequestMapping("/menutree")
    public Object menuTree(HttpServletRequest request){
        User user = userService.getSessionUser(request);
        if (user!=null){
            List<MenuDto> menuList = menuService.findMenuByUserId(user.getId());
            return menuList;
        }
        return null;
    }
    /**
     * 是否存在此viewType
     */
    @RequestMapping("/hasViewType")
    public Object hasViewType(String view){
        boolean b =  menuService.hasViewType(view);
        return  new Msg(b);
    }
}
