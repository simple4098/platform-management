package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Repository
public interface IRoleDao extends JpaRepository<Role,String> {

}
