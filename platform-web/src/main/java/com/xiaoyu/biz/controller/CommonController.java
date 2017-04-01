package com.xiaoyu.biz.controller;


import com.github.pagehelper.PageHelper;
import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.service.IPluginService;
import com.xiaoyu.biz.support.enu.KVPair;
import com.xiaoyu.biz.support.enu.PluginType;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.support.util.PlatformUtil;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
@RequestMapping("/common")
public class CommonController {
    @Resource
    private IPluginService pluginService;

    @RequestMapping("/plugin-type")
    @ResponseBody
    public Object list(Integer page, Integer limit){
        List<KVPair> kvPairs = PlatformUtil.convertToList(PluginType.values());
        return kvPairs;
    }

}
