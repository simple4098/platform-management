package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.PluginAuth;
import com.xiaoyu.biz.support.page.PageModel;
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
public interface IPluginAuthDao extends JpaRepository<PluginAuth,String> {
    /**
     * 分页查询插件授权列表
     * @param pageable 分页对象
     */
    @Query("select  t from PluginAuth t")
    Page<PluginAuth> findPluginAuthPage(Pageable pageable);

    /**
     * 根据id查询插件授权实体信息
     * @param id 插件授权id
     */
    PluginAuth findById(String id);

    List<PluginAuth> findByBusinessId(String businessId);
}
