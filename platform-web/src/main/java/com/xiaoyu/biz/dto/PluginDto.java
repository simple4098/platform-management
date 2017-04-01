package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.Plugin;
import org.apache.commons.lang3.time.DateFormatUtils;

/**
 * <p> 插件DTO  </p>
 * @author : simple
 * @data : 2017/3/27 0027
 * @version: v1.0.0
 */
public class PluginDto extends Plugin {

    private String pluginTypeName;

    public String getPluginTypeName() {
        return pluginTypeName;
    }

    public void setPluginTypeName(String pluginTypeName) {
        this.pluginTypeName = pluginTypeName;
    }



    public String getFailueTimeValue()  {
        String format = DateFormatUtils.format(getFailueTime(), "yyyy-MM-dd");
        return format;
    }
}
