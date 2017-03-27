package com.xiaoyu.biz.support.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 权限验证注解
 * @author simple
 * @date 2017/3/21 0021
 */
@Retention(value = RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD})
public @interface AuthAnno {
	
}
