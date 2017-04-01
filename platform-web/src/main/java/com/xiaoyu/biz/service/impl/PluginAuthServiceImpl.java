package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IPluginAuthDao;
import com.xiaoyu.biz.dao.IPluginAuthResDao;
import com.xiaoyu.biz.dao.IPluginDao;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.domain.PluginAuth;
import com.xiaoyu.biz.domain.PluginAuthRes;
import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.dto.PluginAuthDto;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.support.converter.PluginDtoConverter;
import com.xiaoyu.biz.vo.PluginAuthVo;
import com.xiaoyu.biz.service.IPluginAuthService;
import com.xiaoyu.biz.support.converter.PluginAuthDtoConverter;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.vo.PluginVo;
import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/28 0028
 * @version: v1.0.0
 */
@Service
public class PluginAuthServiceImpl implements IPluginAuthService {
    private static final Logger loger = Logger.getLogger(PluginAuthServiceImpl.class);
    @Resource
    private IPluginAuthDao pluginAuthDao;
    @Resource
    private PluginAuthDtoConverter pluginAuthDtoConverter;
    @Resource
    private IPluginAuthResDao pluginAuthResDao;
    @Resource
    private IPluginDao pluginDao;
    @Resource
    private PluginDtoConverter pluginDtoConverter;



    @Override
    public PageModel<PluginAuthVo> findPlugin(PluginAuth pluginDto, Pageable pageable) {
        Page<PluginAuth> pluginAuthPage = pluginAuthDao.findPluginAuthPage(pageable);
        Page<PluginAuthVo> map = pluginAuthPage.map(pluginAuthDtoConverter);
        return PageModel.from(map);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public PluginAuth updateSavePluginAuth(PluginAuthDto pluginAuthDto) {
        PluginAuth pluginAuth = new PluginAuth();
        BeanUtils.copyProperties(pluginAuthDto,pluginAuth);
        PluginAuth savePluginAuth = pluginAuthDao.save(pluginAuth);
        List<String> pluginIds = pluginAuthDto.getPluginIds();
        if (CollectionUtils.isEmpty(pluginIds)){
            throw new RuntimeException("插件不能为空");
        }
        if (!StringUtils.isEmpty(pluginAuthDto.getId())){
            pluginAuthResDao.modifyPluginAuthResByAuthId(pluginAuthDto.getId());
        }
        PluginAuthRes pluginAuthRes ;
        int sort = 0;
        for (String pluginId:pluginIds) {
            loger.debug("保存 插件====》"+pluginId+" sort:"+sort);
            pluginAuthRes = new PluginAuthRes(pluginId,savePluginAuth.getId(),sort);
            pluginAuthResDao.save(pluginAuthRes);
            sort++;
        }
        return savePluginAuth;
    }

    @Override
    public PluginAuthVo findPluginAuthDtoById(String id) {
        PluginAuth pluginAuth = pluginAuthDao.findById(id);
        PluginAuthVo pluginAuthVo = pluginAuthDtoConverter.convert(pluginAuth);
        return pluginAuthVo;
    }

    @Override
    public List<PluginVo> findMyPlugin(PluginAuthDto pluginAuthDto) {
        List<PluginVo> pluginVoList = new ArrayList<>();
        List<Plugin> plugins = pluginDao.findPluginByBusinessId(pluginAuthDto.getBusinessId());
        PluginVo pluginVo = null;
        if (!CollectionUtils.isEmpty(plugins)){
            Set<String> pluginTypeIds = new HashSet<>();
            for (Plugin plugin:plugins ){
                PluginDto pluginDto = pluginDtoConverter.convert(plugin);
                if (pluginTypeIds.contains(plugin.getPluginTypeId())){
                    for (PluginVo pluginVoValue:pluginVoList) {
                        if (pluginVoValue.getPluginType().getId().equals(plugin.getPluginTypeId())){
                            pluginVo = pluginVoValue;
                        }
                    }
                }else {
                    pluginVo = new PluginVo();
                    pluginVoList.add(pluginVo);
                }
                List<PluginDto> pluginList = pluginVo.getPluginList();
                pluginList.add(pluginDto);
                PluginType pluginType = pluginVo.getPluginType();
                pluginType.setId(plugin.getPluginTypeId());
                pluginType.setPluginTypeName(pluginDto.getPluginTypeName());
                pluginTypeIds.add(plugin.getPluginTypeId());
            }
        }
        return pluginVoList;
    }
}
