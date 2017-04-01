package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.PluginAuthRes;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/30 0030
 * @version: v1.0.0
 */
@Repository
public interface IPluginAuthResDao extends JpaRepository<PluginAuthRes,String> {

    /**
     * 查询某一个授权id下的插件列表
     * @param id 插件授权id
     * @param deleted 1 删除 0 未删除
     * @return
     */
    List<PluginAuthRes> findByPluginAuthIdAndDeleted(String id, int deleted);

    /**
     * 查询某一个授权企业下的插件列表
     * @param id 授权id
     */
    @Query(value = "select  a.* from plugin_auth_res a where a.deleted =0 and a.plugin_auth_id = ?1 order by a.sort ",nativeQuery = true)
    List<PluginAuthRes> findByPluginAuthId(String id);

    /**
     * 删除授权id的所有插件
     * @param pluginAuthId 插件授权id
     */
    @Modifying
    @Query(value = "update plugin_auth_res a set a.deleted = 1 where a.plugin_auth_id = ?1",nativeQuery = true)
    void modifyPluginAuthResByAuthId(String pluginAuthId);
}
