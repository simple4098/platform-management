package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.PluginAuth;
import com.xiaoyu.biz.dto.PluginAuthDto;
import com.xiaoyu.biz.vo.PluginAuthVo;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.vo.PluginVo;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * <p> 插件授权 </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
public interface IPluginAuthService {


    /**
     * 分页查询插件
     * @return
     */
    PageModel<PluginAuthVo> findPlugin(PluginAuth pluginDto, Pageable pageable);


    /**
     * 更新插件授权
     * @param plugin
     * @return
     */
    PluginAuth updateSavePluginAuth(PluginAuthDto plugin);

    PluginAuthVo findPluginAuthDtoById(String id);

    List<PluginVo> findMyPlugin(PluginAuthDto plugin);
}
