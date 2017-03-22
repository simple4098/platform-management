package com.xiaoyu.biz.dao;

import com.xiaoyu.biz.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * <p>  </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
@Repository
public interface IUserDao  extends JpaRepository<User,String> {

    User findByUserIdAndUserPwd(String userid, String s);

    User findById(String id);
}
