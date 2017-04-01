package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.domain.PluginAuth;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
public class PluginAuthDto extends PluginAuth {

    private List<Plugin> plugins = new ArrayList<>();
    private List<String> pluginIds ;

    public List<String> getPluginIds() {
        return pluginIds;
    }

    public void setPluginIds(List<String> pluginIds) {
        this.pluginIds = pluginIds;
    }

    public String getFailueTimeValue()  {
        String format = DateFormatUtils.format(getFailueTime(), "yyyy-MM-dd");
        return format;
    }

    public List<Plugin> getPlugins() {
        return plugins;
    }

    public void setPlugins(List<Plugin> plugins) {
        this.plugins = plugins;
    }
}
