package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.service.IDeptService;
import com.xiaoyu.biz.service.IIconService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * DESC : 部门
 * @author : simple
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/dept")
public class DeptController {

    @Resource
    private IDeptService deptService;

    /**
     * 获取全部部门JSON
     */
    @RequestMapping("/json")
    @ResponseBody
    public Object json(String query){
      return deptService.findDeptByDepName(query);
    }


}
