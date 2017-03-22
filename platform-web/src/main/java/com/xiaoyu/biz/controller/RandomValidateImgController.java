package com.xiaoyu.biz.controller;

import com.xiaoyu.biz.constants.Constants;
import com.xiaoyu.biz.support.util.ImageUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;

import static com.xiaoyu.biz.support.util.ImageUtil.drowLine;

/**
 * DESC : 生成图片验证码
 * @author : 番茄木-ZLin
 * @data : 2015/3/20
 * @version: v1.0.0
 */
@Controller
public class RandomValidateImgController extends AbstractController {
    private  static  final Logger log =   Logger.getLogger(RandomValidateImgController.class);
    private static int lineSize = 40;// 干扰线数量
    private static int stringNum = 4;// 随机产生字符数量

    /**
     * 验证码
     */
    @RequestMapping("/captcha")
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setContentType("image/jpeg");
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        // BufferedImage类是具有缓冲区的Image类,Image类是用于描述图像信息的类
        BufferedImage image = new BufferedImage(Constants.width, Constants.height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();// 产生Image对象的Graphics对象,改对象可以在图像上进行各种绘制操作
        g.fillRect(0, 0, Constants.width, Constants.height);
        g.setFont(new Font("Times New Roman", Font.ROMAN_BASELINE, 18));
        g.setColor(ImageUtil.getRandColor(110, 133));
        // 绘制干扰线
        for (int i = 0; i <= lineSize; i++) {
            drowLine(g);
        }
        // 绘制随机字符
        String randomString = "";
        for (int i = 1; i <= stringNum; i++) {
            randomString = ImageUtil.drowString(g, randomString, i);
        }
        request.getSession().setAttribute(Constants.RANDOM_CODE,randomString);
        g.dispose();
        try {
            ImageIO.write(image, "JPEG", response.getOutputStream());// 将内存中的图片通过流动形式输出到客户端
        } catch (Exception e) {
            log.error( e);
        }
        return null;
    }
}
