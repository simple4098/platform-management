package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.Log;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Repository
public interface ILogDao extends JpaRepository<Log,String>{

    @Query(value = " SELECT cdate, COUNT(cdate) ct FROM (SELECT  SUBSTRING(e.create_time,1,10) cdate FROM ext_log e) t GROUP BY cdate ORDER BY cdate ASC LIMIT ?1 " ,nativeQuery = true)
    List<Log> findLogs(int limit);

}
