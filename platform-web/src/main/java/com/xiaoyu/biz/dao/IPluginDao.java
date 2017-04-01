package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.Plugin;
import com.xiaoyu.biz.dto.PluginDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p> 插件Dao </p>
 * @author : simple
 * @data : 2017/3/24 0024
 * @version: v1.0.0
 */
@Repository
public interface IPluginDao extends JpaRepository<Plugin,String> {

    /**
     * 分页查询插件
     * @param pageable 分页对象
     */
    @Query("select  t from Plugin t where t.deleted=0")
    Page<Plugin> findPluginByPage(Pageable pageable);

    /**
     * 根据id查询插件信息
     * @param pluginId 插件id
     * @return
     */
    Plugin findById(String pluginId);

    /**
     * 根据插件名称模糊查询插件并分页
     * @param pluginName 插件名称
     * @param status 状态
     * @param pageable 分页对象
     */
    Page<Plugin> findByPluginNameAndDeletedContaining(String pluginName, int status, Pageable pageable);

    /**
     * 根据插件的status，查询类型为启用的插件列表
     * @param status 状态 1 启用 0 禁用
     */
    @Query(value = "SELECT o.* from plugin o LEFT JOIN plugin_type pt ON pt.id = o.plugin_type_id where pt.status=1 and pt.deleted=0 and o.status=?1",nativeQuery = true)
    List<Plugin> findByStatus(int status);

    /**
     * 根据查询id 查询插件信息，并且插件状态为启用
     * @param pluginId 插件id
     */
    @Query(value = "SELECT o.* from plugin o LEFT JOIN plugin_type pt ON pt.id = o.plugin_type_id where pt.status=1 and pt.deleted=0 and o.id=?1",nativeQuery = true)
    Plugin findByIdAndPluginTypeStatus(String pluginId);

    @Query(value = "SELECT p.*,pt.plugin_type_name from plugin_auth pa LEFT JOIN plugin_auth_res par ON par.plugin_auth_id = pa.id " +
            "LEFT JOIN plugin p ON p.id = par.plugin_id " +
            "LEFT JOIN plugin_type pt ON pt.id = p.plugin_type_id " +
            "WHERE p.deleted=0 and p.status=1 and pt.deleted=0 and pt.status = 1 and pa.deleted=0 and pa.status=1 and par.deleted=0 and pa.business_id=?1 ORDER BY par.sort ",nativeQuery = true)
    List<Plugin> findPluginByBusinessId(String businessId);
}
