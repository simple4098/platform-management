package com.xiaoyu.biz.service;

import com.xiaoyu.biz.domain.Dept;
import com.xiaoyu.biz.domain.Icon;

import java.util.List;

/**
 * <p> </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public interface IDeptService {

    List<Dept> findDeptByDepName(String queryValue);
}
