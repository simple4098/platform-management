package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.Menu;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public class MenuDto extends Menu{
    private List<MenuDto> children;
    private boolean expanded = false;

    public List<MenuDto> getChildren() {
        return children;
    }

    public void setChildren(List<MenuDto> children) {
        this.children = children;
    }

    public boolean isExpanded() {
        return expanded;
    }

    public void setExpanded(boolean expanded) {
        this.expanded = expanded;
    }
}
