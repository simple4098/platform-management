package com.xiaoyu.biz.dto;

import com.xiaoyu.biz.domain.PluginType;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/31 0031
 * @version: v1.0.0
 */
public class PluginTypeDto extends PluginType{
    private String businessName;

    public String getBusinessName() {
        return businessName;
    }

    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }
}
