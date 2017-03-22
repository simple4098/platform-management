package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.service.IDeptService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * DESC : 日志
 * @author : simple
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/log")
public class LogController {

    @Resource
    private IDeptService deptService;

    /**
     * 获取全部部门JSON
     */
    @RequestMapping("/line")
    @ResponseBody
    public Object json(String query){
      return deptService.findDeptByDepName(query);
    }


}
