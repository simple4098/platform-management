package com.xiaoyu.biz.support.anno;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 记录日志
 * @author simple
 * @date 2017/3/21 0021
 */
@Retention(value = RetentionPolicy.RUNTIME)
@Target({ ElementType.METHOD})
public @interface Log {
	 String value() default "";
}
