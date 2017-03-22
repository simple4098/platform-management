package com.xiaoyu.biz.support.util;

import com.xiaoyu.biz.constants.Constants;

import java.awt.*;
import java.util.Random;

/**
 * <p> 图片工具类 </p>
 * @author : simple
 * @data : 2017/3/21 0021
 * @version: v1.0.0
 */
public class ImageUtil {
    private static Random random = new Random();
    private static String randString = "23456789ABCDEFGHJKMNPQRSTUVWXYZ";// 随机产生的字符串



    private ImageUtil(){}
    /*
    * 获得字体
    */
    public static Font getFont() {
        return new Font("Fixedsys", Font.CENTER_BASELINE, 18);
    }

    /*
     * 获得颜色
     */
    public static Color getRandColor(int fc, int bc) {
        if (fc > 255)
            fc = 255;
        if (bc > 255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc - 16);
        int g = fc + random.nextInt(bc - fc - 14);
        int b = fc + random.nextInt(bc - fc - 18);
        return new Color(r, g, b);
    }

    /*
     * 绘制字符串
     */
    public static String drowString(Graphics g, String randomString, int i) {
        g.setFont(getFont());
        g.setColor(new Color(random.nextInt(101), random.nextInt(111), random.nextInt(121)));
        String rand = String.valueOf(getRandomString(random.nextInt(randString.length())));
        randomString += rand;
        g.translate(random.nextInt(3), random.nextInt(3));
        g.drawString(rand, 13 * i, 16);
        return randomString;
    }

    /*
     * 绘制干扰线
     */
    public static void drowLine(Graphics g) {
        int x = random.nextInt(Constants.width);
        int y = random.nextInt(Constants.height);
        int xl = random.nextInt(13);
        int yl = random.nextInt(15);
        g.drawLine(x, y, x + xl, y + yl);
    }

    /*
     * 获取随机的字符
     */
    public static String getRandomString(int num) {
        return String.valueOf(randString.charAt(num));
    }
}
