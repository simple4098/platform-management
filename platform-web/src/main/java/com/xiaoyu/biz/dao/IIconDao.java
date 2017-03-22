package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.Icon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>  </p>
 *
 * @author : simple
 * @data : 2017/3/22 0022
 * @version: v1.0.0
 */
@Repository
public interface IIconDao extends JpaRepository<Icon,String> {

    List<Icon> findByIconName(String iconName);
}
