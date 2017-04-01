package com.xiaoyu.biz.support.enu;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
public enum PluginType {
    COMMON_PLUGIN("常用插件"),
    OTHER_PLUGIN("其他插件");
    private String value;
    PluginType(String value){
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
