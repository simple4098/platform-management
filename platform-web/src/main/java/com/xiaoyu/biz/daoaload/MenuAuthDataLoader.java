package com.xiaoyu.biz.daoaload;/*
package com.xiaoyu.biz.daoaload;

import com.jfinal.plugin.ehcache.IDataLoader;
import com.xiaoyu.biz.dao.IUserRoleDao;
import com.xiaoyu.biz.domain.Menu;
import com.xiaoyu.biz.domain.RoleMenu;
import com.xiaoyu.biz.domain.UserRole;
import com.xiaoyu.biz.dto.MenuDto;
import com.xiaoyu.biz.service.IMenuService;
import com.xiaoyu.biz.service.IRoleMenuService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

*/
/**
 * 更具keys获取数据组和数据项
 *//*

@Component
public class MenuAuthDataLoader  implements IDataLoader{
	@Resource
	private IUserRoleDao userRoleDao;
	@Resource
	private IRoleMenuService roleMenuService;
	@Resource
	private IMenuService menuService;
	private String uid;
	public MenuAuthDataLoader(String uid) {
		super();
		this.uid = uid;
	}
	public String getUid() {
		return uid;
	}

	@Override
	public Object load() {
		List<MenuDto> menus  = new ArrayList<MenuDto>();
		*/
/**
		 * 获取角色ID列表
		 *//*

		List<UserRole> userRoles = userRoleDao.findByUserId(getUid());
		*/
/**
		 * 获取菜单ID列表
		 *//*

		List<String> roleMenus = roleMenuService.findRoleMenusByRoleIds(userRoles);
		if(roleMenus == null || roleMenus.size()==0){
			return menus;
		}
		*/
/**
		 * 查询菜单
		 *//*

        menus = menuService.findByPidAndIds("0", roleMenus);
		*/
/*for(int i=0;i<menus.size();i++){
			MenuDto menu = menus.get(i);
			menu.setLeaf('0');
			List<MenuDto> menus2 =  menuService.findByPidAndIds(menu.getId(), roleMenus);
			for(Menu menu2 : menus2){
				menu2.setLeaf('1');
			}
			menu.setChildren(menus2);
		}*//*


		return menus;
	}
}
*/
