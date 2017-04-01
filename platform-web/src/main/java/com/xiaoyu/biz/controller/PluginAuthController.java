package com.xiaoyu.biz.controller;


import com.xiaoyu.biz.domain.PluginAuth;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.dto.PluginAuthDto;
import com.xiaoyu.biz.vo.PluginAuthVo;
import com.xiaoyu.biz.service.IPluginAuthService;
import com.xiaoyu.biz.support.message.ResponseModel;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.support.page.PagePlatformRequest;
import com.xiaoyu.biz.vo.PluginVo;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p> 插件授权 </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/plugin-auth")
public class PluginAuthController {
    @Resource
    private IPluginAuthService pluginAuthService;



    @RequestMapping("/my")
    @ResponseBody
    public ResponseModel myPlugin(PluginAuthDto plugin){
        List<PluginVo> pluginDtoPage = pluginAuthService.findMyPlugin(plugin);
        return ResponseModel.SUCCESS(pluginDtoPage);
    }
    /**
     * 插件授权列表
     * @param pagePlatformRequest 分页对象
     * @param plugin 查询参数
     */
    @RequestMapping("/list")
    @ResponseBody
    public Object list(PagePlatformRequest pagePlatformRequest,PluginAuth plugin){
        Pageable pageable = pagePlatformRequest.page();
        PageModel<PluginAuthVo> pluginDtoPage = pluginAuthService.findPlugin(plugin,pageable);
        return pluginDtoPage;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Object list(PluginAuthDto plugin){
        pluginAuthService.updateSavePluginAuth(plugin);
        return new Msg(true);
    }


    @RequestMapping("/edit")
    @ResponseBody
    public Object edit( PluginAuthDto plugin ){
        PluginAuth savePlugin1 = pluginAuthService.updateSavePluginAuth(plugin);
        return new Msg(true,"OK",savePlugin1);
    }

    @RequestMapping("/get")
    @ResponseBody
    public Object get(String id ){
        return pluginAuthService.findPluginAuthDtoById(id);
    }
}
