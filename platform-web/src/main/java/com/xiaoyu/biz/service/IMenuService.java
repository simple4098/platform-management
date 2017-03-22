package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.Menu;
import com.xiaoyu.biz.dto.MenuDto;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public interface IMenuService {

    List<MenuDto> findByPidAndIds(String pid, List<String> roleMenus);

    List<Menu> findByUid(String uid);

    boolean hasViewType(String view);

    List<MenuDto> findMenuByUserId(String userId);
}
