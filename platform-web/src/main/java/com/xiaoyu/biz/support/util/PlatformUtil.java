package com.xiaoyu.biz.support.util;

import com.xiaoyu.biz.support.enu.KVPair;
import com.xiaoyu.biz.support.enu.PluginType;
import com.xiaoyu.biz.support.message.MessageSource;

import javax.servlet.http.HttpServletRequest;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p> 工具类 </p>
 *
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public class PlatformUtil {
    private PlatformUtil(){}
    /**
     * 验证是否登录
     * @param request
     * @return
     */
    public static boolean isLogin(HttpServletRequest request){
        if(request.getSession().getAttribute("uid") != null){
            return true;
        }
        return false;
    }

    /**
     * md5加密
     *
     * @param s
     * @return
     */
    public final static String MD5(String s) {
        char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'A', 'B', 'C', 'D', 'E', 'F' };
        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 将枚举对象 转化为字段对象
     * @param enums 待转化的枚举对象
     */
    public static List<KVPair> convertToList(PluginType[] enums) {
        return Arrays.stream(enums).map(e -> new KVPair(e.name(), e.getValue())).collect(Collectors.toList());
    }
}
