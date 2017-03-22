package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Repository
public interface IUserRoleDao extends JpaRepository<UserRole,String> {

    List<UserRole> findByUserId(String userId);
}
