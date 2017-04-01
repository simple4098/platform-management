package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IPluginDao;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.service.IPluginService;
import com.xiaoyu.biz.support.converter.PluginDtoConverter;
import com.xiaoyu.biz.support.page.PageModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Service
public class PluginServiceImpl implements IPluginService {

    @Resource
    private IPluginDao pluginDao;
    @Resource
    private PluginDtoConverter pluginDtoConverter;

    @Override
    @Transactional
    public Plugin savePlugin(Plugin plugin) {
        return pluginDao.save(plugin);
    }

    @Override
    @Transactional(readOnly = true)
    public List<PluginDto> findPlugin() {
        List<PluginDto> list = new ArrayList<>();
        List<Plugin> pluginList = pluginDao.findByStatus(1);
        PluginDto pluginDto = null;
        for (Plugin p : pluginList) {
            pluginDto = pluginDtoConverter.convert(p);
            list.add(pluginDto);
        }
        return list;
    }

    @Override
    @Transactional(readOnly = true)
    public PageModel<PluginDto> findPlugin(PluginDto pluginDto,Pageable pageable) {
        Page<Plugin> plugins = null;
        if (StringUtils.isEmpty(pluginDto.getPluginName())){
            plugins =  pluginDao.findPluginByPage(pageable);
        }else {
            plugins = pluginDao.findByPluginNameAndDeletedContaining(pluginDto.getPluginName(),0,pageable);
        }
        Page<PluginDto> pluginDtoPage = plugins.map(pluginDtoConverter);
        PageModel<PluginDto> from = PageModel.from(pluginDtoPage);
        return from;
    }

    @Override
    @Transactional(readOnly = true)
    public Plugin findPluginById(String pluginId) {
        return pluginDao.findById(pluginId);
    }

    @Override
    @Transactional
    public Plugin updatePlugin(Plugin plugin) {
        return pluginDao.save(plugin);
    }
}
