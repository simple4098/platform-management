package com.xiaoyu.biz.domain;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * <p> 插件实体 </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Entity
@Table(name = "plugin_auth")
public class PluginAuth extends Domain {
    /*//插件id
    private String pluginId;*/
    //企业id
    private String businessId;
    //企业名称
    private String businessName;
    //企业类型
    private String businessType="SCHOOL";
    //用户id
    private String userId;
    //失效时间
    private Date failueTime;
    //是否开启 1 开启  0 禁用
    private int status;
    /*//排序
    private int sort;*/

    /*public String getPluginId() {
        return pluginId;
    }

    public void setPluginId(String pluginId) {
        this.pluginId = pluginId;
    }*/

    public String getBusinessId() {
        return businessId;
    }

    public void setBusinessId(String businessId) {
        this.businessId = businessId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getFailueTime() {
        return failueTime;
    }

    public void setFailueTime(Date failueTime) {
        this.failueTime = failueTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    /*public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }*/

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    public String getBusinessType() {
        return businessType;
    }

    public void setBusinessType(String businessType) {
        this.businessType = businessType;
    }
}
