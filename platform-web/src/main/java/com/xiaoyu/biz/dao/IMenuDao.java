package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Repository
public interface IMenuDao extends JpaRepository<Menu,String>{

    @Query(value = "select t.* from ext_menu t where t.pid=:pid  and t.id in (:ids)",nativeQuery = true)
    List<Menu> findByPidAndIds(@Param("pid") String pid, @Param("ids") String ids);

    Menu findByStatusAndPidAndIdOrderBySortDesc(int status, String pid, String id);

    @Query(value =" SELECT m.*  FROM ext_user_role ur  LEFT JOIN ext_role_menu rm ON ur.role_id = rm.role_id LEFT JOIN ext_menu m ON m.id = rm.menu_id WHERE  m.action IS NOT NULL and m.status = 1  and ur.user_id = ?1 ORDER BY  m.sort DESC ",nativeQuery=true)
    List<Menu> findMenus(String uid);

    Menu findByViewType(String view);

    @Query(value = " SELECT ext.*,ext2.text ptext FROM ext_menu ext  LEFT JOIN ext_menu ext2 ON ext.pid = ext2.id  WHERE  ext2.status = 1 and ext.pid =?1 ORDER BY  ext.sort DESC ",nativeQuery = true)
    List<Menu> findMenusByPid(String pid);
}
