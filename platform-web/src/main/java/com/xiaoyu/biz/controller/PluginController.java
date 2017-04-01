package com.xiaoyu.biz.controller;


import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.service.IPluginService;
import com.xiaoyu.biz.support.message.ResponseModel;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.support.page.PagePlatformRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/plugin")
public class PluginController {
    @Resource
    private IPluginService pluginService;


    @RequestMapping("/list")
    @ResponseBody
    public ResponseModel list(PagePlatformRequest pagePlatformRequest, PluginDto plugin){
        Pageable pageable = pagePlatformRequest.page();
        PageModel<PluginDto> pluginDtoPage = pluginService.findPlugin(plugin,pageable);
        return ResponseModel.SUCCESS(pluginDtoPage);
    }

    @RequestMapping("/list-all")
    @ResponseBody
    public Object listAll(){
        List<PluginDto> pluginDtoPage = pluginService.findPlugin();
        return pluginDtoPage;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Object list(Plugin plugin){
        pluginService.savePlugin(plugin);
        return new Msg(true);
    }

    @RequestMapping("/get")
    @ResponseBody
    public Object list(String pluginId){
        Plugin plugin = pluginService.findPluginById(pluginId);
        return new Msg(true,"OK",plugin);
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(Plugin plugin){
        Plugin savePlugin = pluginService.updatePlugin(plugin);
        return new Msg(true,"OK",savePlugin);
    }
}
