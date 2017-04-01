package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.dto.PluginTypeDto;
import com.xiaoyu.biz.support.page.PageModel;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/31 0031
 * @version: v1.0.0
 */
public interface IPluginTypeService {

    PageModel<PluginType> findPlugTypesByPage(Pageable pageable);

    PluginType saveOrUpdatePluginType(PluginType pluginType);

    List<PluginType> findAllPlugin();

    void deletePluginType(String pluginTypeId);
}
