package com.xiaoyu.biz.service.impl;

import com.xiaoyu.biz.dao.ILogDao;
import com.xiaoyu.biz.domain.Log;
import com.xiaoyu.biz.service.ILogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Service
public class LogServiceImpl implements ILogService {
    @Resource
    private ILogDao logDao;
    @Override
    public List<Log> findLogs(int limit) {
        return logDao.findLogs(limit);
    }
}
