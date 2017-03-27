package com.xiaoyu.biz.service.impl;

import com.alibaba.fastjson.JSON;
import com.xiaoyu.biz.dao.IMenuDao;
import com.xiaoyu.biz.dao.IUserRoleDao;
import com.xiaoyu.biz.domain.Menu;
import com.xiaoyu.biz.domain.UserRole;
import com.xiaoyu.biz.dto.MenuDto;
import com.xiaoyu.biz.service.IMenuService;
import com.xiaoyu.biz.service.IRoleMenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Service
public class MenuServiceImpl implements IMenuService {
    private static final Logger log = LoggerFactory.getLogger(MenuServiceImpl.class);
    @Resource
    private IMenuDao menuDao;
    @Resource
    private IUserRoleDao userRoleDao;
    @Resource
    private IRoleMenuService roleMenuService;
    @Override
    public List<MenuDto> findByPidAndIds(String pid, List<String> roleMenus) {
        List<MenuDto> menuDtoList = new ArrayList<>();
        List<Menu> menus = new ArrayList<>();
        for(String mid : roleMenus){
            Menu menu = menuDao.findByPidAndId(pid, mid);
            if (menu!=null){
                menus.add(menu);
            }
        }
        //List<Menu> menus = menuDao.findByPidAndIds(pid, stringBuffer.toString());
        MenuDto menuDto = null;
        for(Menu m : menus){
            menuDto = new MenuDto();
            BeanUtils.copyProperties(m,menuDto);
            menuDtoList.add(menuDto);
        }
        return menuDtoList;
    }

    @Override
    public List<Menu> findByUid(String uid) {
        return menuDao.findMenus(uid);
    }

    @Override
    public boolean hasViewType(String view) {
        Menu menu = menuDao.findByViewType(view);
        return menu!=null;
    }

    @Override
    public List<MenuDto> findMenuByUserId(String userId) {
        List<MenuDto> menus  = new ArrayList<MenuDto>();
        /**
         * 获取角色ID列表
         */
        List<UserRole> userRoles = userRoleDao.findByUserId(userId);
        /**
         * 获取菜单ID列表
         */
        List<String> roleMenus = roleMenuService.findRoleMenusByRoleIds(userRoles);
        if(roleMenus == null || roleMenus.size()==0){
            return menus;
        }
        /**
         * 查询菜单
         */
        menus = findByPidAndIds("0", roleMenus);
        for(int i=0;i<menus.size();i++){
            MenuDto menu = menus.get(i);
            menu.setLeaf(false);
            List<MenuDto> menus2 =  findByPidAndIds(menu.getId(), roleMenus);
            if (!CollectionUtils.isEmpty(menus2)){
                for(Menu menu2 : menus2){
                    menu2.setLeaf(true);
                }
                menu.setChildren(menus2);
            }else {
                menu.setChildren(null);
            }

        }
        return menus;
    }

    @Override
    public List<MenuDto> findMenuTreeByPid(String pid) {
        List<Menu> menuList = menuDao.findMenusByPid(pid);
        List<MenuDto> list = new ArrayList<>();
        MenuDto menuDto = null;
        for(Menu m : menuList){
            menuDto = new MenuDto();
            BeanUtils.copyProperties(m,menuDto);
            list.add(menuDto);
        }
        return list;
    }

    @Override
    public void saveMenu(Menu menu) {
        menu.setId(UUID.randomUUID().toString());
        menuDao.save(menu);
    }
}
