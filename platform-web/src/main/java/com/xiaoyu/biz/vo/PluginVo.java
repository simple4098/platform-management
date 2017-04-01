package com.xiaoyu.biz.vo;

import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.dto.PluginDto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * <p> 插件vo对象 </p>
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
public class PluginVo implements Serializable {

    private List<PluginDto> pluginList = new ArrayList<>();
    private PluginType pluginType =new PluginType();

    public List<PluginDto> getPluginList() {
        return pluginList;
    }

    public void setPluginList(List<PluginDto> pluginList) {
        this.pluginList = pluginList;
    }

    public PluginType getPluginType() {
        return pluginType;
    }

    public void setPluginType(PluginType pluginType) {
        this.pluginType = pluginType;
    }
}
