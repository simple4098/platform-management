package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.support.page.PageModel;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
public interface IPluginService {
    /**
     * 保存插件
     * @param plugin
     * @return
     */
    Plugin savePlugin(Plugin plugin);

    /**
     * 查询全部插件
     * @return
     */
    List<PluginDto> findPlugin();
    /**
     * 分页查询插件
     * @return
     */
    PageModel<PluginDto> findPlugin(PluginDto pluginDto, Pageable pageable);

    /**
     * 根据id查询插件
     * @param pluginId
     * @return
     */
    Plugin findPluginById(String pluginId);
    /**
     * 更新插件
     * @param plugin
     * @return
     */
    Plugin updatePlugin(Plugin plugin);
}
