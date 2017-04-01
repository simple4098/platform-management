package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.domain.User;
import com.xiaoyu.biz.dto.Msg;
import com.xiaoyu.biz.dto.PluginDto;
import com.xiaoyu.biz.dto.UserDto;
import com.xiaoyu.biz.service.IUserRoleService;
import com.xiaoyu.biz.service.IUserService;
import com.xiaoyu.biz.support.message.ResponseModel;
import com.xiaoyu.biz.support.page.PageModel;
import com.xiaoyu.biz.support.page.PagePlatformRequest;
import com.xiaoyu.biz.support.util.Pinyin4jKit;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * DESC : 用户管理
 * @author : simple
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;
    @Resource
    private IUserRoleService userRoleService;


    /**
     * 获取当前登录用户信息
     */
    @RequestMapping("/getMe")
    @ResponseBody
    public ResponseModel getMe(HttpServletRequest request){
        User user = userService.getSessionUser(request);
        UserDto userDto = userRoleService.findUserRoleByUserId(user.getId());
        return ResponseModel.SUCCESS(userDto);
    }

    /**
     * 获取当前登录用户信息
     */
    @RequestMapping("/edit")
    @ResponseBody
    public ResponseModel edit(UserDto userDto){
        userService.updateOrSaveUser(userDto);
        return ResponseModel.SUCCESS();
    }

    @RequestMapping("/list")
    @ResponseBody
    public Object list(PagePlatformRequest pagePlatformRequest,UserDto userDto){
        Pageable pageable = pagePlatformRequest.page();
        PageModel<UserDto>  pageModelUser = userService.findUserPage(userDto,pageable);
        return pageModelUser;
    }
}
