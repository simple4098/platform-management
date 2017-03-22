package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.Icon;
import com.xiaoyu.biz.dto.LoginDto;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p> </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public interface IIconService {

    List<Icon> findIconByCondition(String queryValue);
}
