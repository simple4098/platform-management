package com.xiaoyu.biz.support.converter;

import com.xiaoyu.biz.dao.IPluginTypeDao;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.dto.PluginDto;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;


/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
@Component
public class PluginDtoConverter implements Converter<Plugin, PluginDto> {
    @Resource
    private IPluginTypeDao pluginTypeDao;
    @Override
    public PluginDto convert(Plugin plugin) {
        PluginType pluginType = pluginTypeDao.findById(plugin.getPluginTypeId());
        PluginDto pluginDto = new PluginDto();
        BeanUtils.copyProperties(plugin,pluginDto);
        if (pluginType!=null){
            pluginDto.setPluginTypeName(pluginType.getPluginTypeName());
        }
        return pluginDto;
    }
}
