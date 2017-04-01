package com.xiaoyu.biz.support.converter;

import com.xiaoyu.biz.dao.IPluginAuthResDao;
import com.xiaoyu.biz.dao.IPluginDao;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.domain.PluginAuth;
import com.xiaoyu.biz.domain.PluginAuthRes;
import com.xiaoyu.biz.vo.PluginAuthVo;
import org.springframework.beans.BeanUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
@Component
public class PluginAuthDtoConverter implements Converter<PluginAuth, PluginAuthVo> {
    @Resource
    private IPluginDao pluginDao;
    @Resource
    private IPluginAuthResDao pluginAuthResDao;
    @Override
    public PluginAuthVo convert(PluginAuth pluginAuth) {
        PluginAuthVo pluginAuthDto = new PluginAuthVo();
        BeanUtils.copyProperties(pluginAuth,pluginAuthDto);
        List<PluginAuthRes> byPluginAuthIdAndDelete = pluginAuthResDao.findByPluginAuthId(pluginAuth.getId());
        if (!CollectionUtils.isEmpty(byPluginAuthIdAndDelete)){
            List<Plugin> list = new ArrayList<>();
            List<String> pluginIds = new ArrayList<>();
            Plugin findPlugin = null;
            for (PluginAuthRes p:byPluginAuthIdAndDelete ) {
                findPlugin = pluginDao.findByIdAndPluginTypeStatus(p.getPluginId());
                if (findPlugin!=null){
                    list.add(findPlugin);
                    pluginIds.add(findPlugin.getId());
                }
            }
            pluginAuthDto.setPlugins(list);
            pluginAuthDto.setPluginIds(pluginIds);
        }
        return pluginAuthDto;
    }
}
