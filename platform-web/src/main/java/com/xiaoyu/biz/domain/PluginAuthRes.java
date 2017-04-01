package com.xiaoyu.biz.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * <p> 插件授权关联表 </p>
 * @author : simple
 * @data : 2017/3/30 0030
 * @version: v1.0.0
 */
@Entity
@Table(name = "plugin_auth_res")
public class PluginAuthRes extends Domain {

    private String pluginId;
    private String pluginAuthId;
    //排序
    private int sort;

    public PluginAuthRes() {
    }

    public PluginAuthRes(String pluginId, String pluginAuthId,int sort) {
        this.pluginId = pluginId;
        this.pluginAuthId = pluginAuthId;
        this.sort = sort;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public String getPluginId() {
        return pluginId;
    }

    public void setPluginId(String pluginId) {
        this.pluginId = pluginId;
    }

    public String getPluginAuthId() {
        return pluginAuthId;
    }

    public void setPluginAuthId(String pluginAuthId) {
        this.pluginAuthId = pluginAuthId;
    }
}
