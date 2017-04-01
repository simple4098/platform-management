package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IPluginTypeDao;
import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.service.IPluginTypeService;
import com.xiaoyu.biz.support.page.PageModel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/31 0031
 * @version: v1.0.0
 */
@Service
public class PluginTypeServiceImpl implements IPluginTypeService {
    @Resource
    private IPluginTypeDao pluginTypeDao;

    @Override
    public PageModel<PluginType> findPlugTypesByPage(Pageable pageable) {
        Page<PluginType> page = pluginTypeDao.findPluginTypesByBusinessIdAndPage(pageable);
        PageModel<PluginType> from = PageModel.from(page);
        return from;
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public PluginType saveOrUpdatePluginType(PluginType pluginType) {
        return pluginTypeDao.save(pluginType);
    }

    @Override
    public List<PluginType> findAllPlugin() {
        return pluginTypeDao.findAllPluginType();
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED)
    public void deletePluginType(String pluginTypeId) {
        pluginTypeDao.modifyingPluginType(pluginTypeId);
    }
}
