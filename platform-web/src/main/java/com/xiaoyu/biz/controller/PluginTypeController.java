package com.xiaoyu.biz.controller;


import com.xiaoyu.biz.domain.PluginType;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.service.IPluginTypeService;
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
@RequestMapping("/plugin-type")
public class PluginTypeController {

    @Resource
    private IPluginTypeService pluginTypeService;


    @RequestMapping("/list")
    @ResponseBody
    public ResponseModel list(PagePlatformRequest pagePlatformRequest){
        Pageable pageable = pagePlatformRequest.page();
        PageModel<PluginType> pluginDtoPage = pluginTypeService.findPlugTypesByPage(pageable);
        return ResponseModel.SUCCESS(pluginDtoPage);
    }

    @RequestMapping("/list-all")
    @ResponseBody
    public Object listAll(){
        List<PluginType> pluginTypeList = pluginTypeService.findAllPlugin();
        return pluginTypeList;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Object list(PluginType plugin){
        pluginTypeService.saveOrUpdatePluginType(plugin);
        return new Msg(true);
    }
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(String pluginTypeId){
        pluginTypeService.deletePluginType(pluginTypeId);
        return new Msg(true);
    }



    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(PluginType plugin){
        PluginType savePlugin = pluginTypeService.saveOrUpdatePluginType(plugin);
        return new Msg(true,"OK",savePlugin);
    }
}
