package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.domain.Icon;
import com.xiaoyu.biz.service.IIconService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * DESC : 图标
 * @author : simple
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/icon")
public class IconController {

    @Resource
    private IIconService iconService;

    @RequestMapping("/json")
    @ResponseBody
    public Object json(String query){
        List<Icon> iconList = iconService.findIconByCondition(query);
        return iconList;
    }


}
