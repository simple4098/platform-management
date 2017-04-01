package com.xiaoyu.biz.domain;

import com.xiaoyu.biz.support.enu.PluginType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

/**
 * <p> 插件实体 </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Entity
@Table(name = "plugin")
public class Plugin extends Domain {
    //插件名词
    private String pluginName;
    //插件url
    private String pluginUrl;
    //插件失效时间
    private Date failueTime;
   /* //插件类型
    @Enumerated(value = EnumType.STRING)
    private PluginType pluginType;*/
    //类型id
    private String pluginTypeId;
    //发行商
    private String publisher;
    //插件版本号
    private String versionNum;
    //是否开启 true 开启  false 禁用
    private int status;

    public String getPluginTypeId() {
        return pluginTypeId;
    }

    public void setPluginTypeId(String pluginTypeId) {
        this.pluginTypeId = pluginTypeId;
    }

    public String getPluginName() {
        return pluginName;
    }

    public void setPluginName(String pluginName) {
        this.pluginName = pluginName;
    }

    public String getPluginUrl() {
        return pluginUrl;
    }

    public void setPluginUrl(String pluginUrl) {
        this.pluginUrl = pluginUrl;
    }

    public Date getFailueTime() {
        return failueTime;
    }

    public void setFailueTime(Date failueTime) {
        this.failueTime = failueTime;
    }

    /*public PluginType getPluginType() {
        return pluginType;
    }

    public void setPluginType(PluginType pluginType) {
        this.pluginType = pluginType;
    }*/

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getVersionNum() {
        return versionNum;
    }

    public void setVersionNum(String versionNum) {
        this.versionNum = versionNum;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
