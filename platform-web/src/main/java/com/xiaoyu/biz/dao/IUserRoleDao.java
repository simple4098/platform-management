package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
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
public interface IUserRoleDao extends JpaRepository<UserRole,String> {

    List<UserRole> findByUserId(String userId);

    @Query(value = "SELECT ur.id,r.role_name FROM ext_user_role ur  LEFT JOIN ext_role r ON r.id = ur.role_id WHERE ur.user_id = ?1",nativeQuery = true)

    List<Object[]> findUserRoleDtoByUserId(String userId);

    @Modifying
    @Query(value = " delete from ext_user_role a where a.user_id = ?1",nativeQuery = true)
    void deleteByUserId(String id);
}
