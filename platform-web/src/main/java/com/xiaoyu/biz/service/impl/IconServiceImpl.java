package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.IIconDao;
import com.xiaoyu.biz.domain.Icon;
import com.xiaoyu.biz.service.IIconService;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Service
public class IconServiceImpl implements IIconService {
    @Resource
    private IIconDao iconDao;
    @Override
    public List<Icon> findIconByCondition(String queryValue) {
        if (StringUtils.isEmpty(queryValue)){
            return  iconDao.findAll();
        }else {
            return iconDao.findByIconName(queryValue);
        }
    }
}
