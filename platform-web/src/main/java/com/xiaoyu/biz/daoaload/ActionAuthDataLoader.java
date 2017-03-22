/*
package com.xiaoyu.biz.daoaload;

import com.jfinal.plugin.ehcache.IDataLoader;
import com.xiaoyu.biz.domain.Menu;
import com.xiaoyu.biz.service.IMenuService;

import javax.annotation.Resource;
import java.util.List;

*/
/**
 * 更具keys获取数据组和数据项
 * @author: 周高军 2016年6月2日
 *//*

public class ActionAuthDataLoader  implements IDataLoader{
	
	private String uid;
	@Resource
	private IMenuService menuService;
	
	@Override
	public Object load() {
		List<Menu> menus  = menuService.findByUid(uid);
		return menus;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public ActionAuthDataLoader() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ActionAuthDataLoader(String uid) {
		super();
		this.uid = uid;
	}
	
	
}
*/
