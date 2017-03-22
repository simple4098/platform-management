package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.RoleMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Repository
public interface IRoleMenuDao extends JpaRepository<RoleMenu,String> {

    @Query("select DISTINCT  t.menuId from RoleMenu t where t.roleId in (?1)")
    List<String> findByRoleId(String roleId);
}
