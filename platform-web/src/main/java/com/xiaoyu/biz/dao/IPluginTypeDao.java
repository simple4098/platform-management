package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.PluginType;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/31 0031
 * @version: v1.0.0
 */
@Repository
public interface IPluginTypeDao extends JpaRepository<PluginType,String> {

    /**
     * 分页查询插件类型列表
     * @param pageable 分页对象
     * @return
     */
    @Query("select t from  PluginType t where t.deleted=0 ")
    Page<PluginType> findPluginTypesByBusinessIdAndPage(Pageable pageable);

    /**
     * 查询全部插件类型
     * @return
     */
    @Query("select t from  PluginType t where t.deleted=0 ")
    List<PluginType> findAllPluginType();

    /**
     * 逻辑删除插件类型
     * @param id 插件类型id
     */
    @Modifying
    @Query(value = "update plugin_type a set a.deleted = 1 where a.id = ?1",nativeQuery = true)
    void modifyingPluginType(String id);

    /**
     * 根据插件类型id查询插件类型信息
     * @param pluginTypeId 插件类型id
     */
    PluginType findById(String pluginTypeId);
}
