package com.xiaoyu.biz.domain;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * <p> 插件类型实体 </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Entity
@Table(name = "plugin_type")
public class PluginType extends Domain {

    //插件类型名称
    private String pluginTypeName;
    //1启用 0 禁用
    private int status;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getPluginTypeName() {
        return pluginTypeName;
    }

    public void setPluginTypeName(String pluginTypeName) {
        this.pluginTypeName = pluginTypeName;
    }
}
