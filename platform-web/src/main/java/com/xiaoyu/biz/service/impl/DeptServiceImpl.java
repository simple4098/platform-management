package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IDeptDao;
import com.xiaoyu.biz.domain.Dept;
import com.xiaoyu.biz.service.IDeptService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import javax.annotation.Resource;
import java.util.List;

/**
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Service
public class DeptServiceImpl implements IDeptService {
    @Resource
    private IDeptDao deptDao;
    @Override
    public List<Dept> findDeptByDepName(String queryValue) {
        if (StringUtils.isEmpty(queryValue)){
            return deptDao.findAll();
        }else {
            return  deptDao.findByDeptName(queryValue);
        }
    }
}
