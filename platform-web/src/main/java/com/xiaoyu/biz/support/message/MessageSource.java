package com.xiaoyu.biz.support.message;

import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import java.util.Locale;

/**
 *  @author simple
 */
public class MessageSource extends ReloadableResourceBundleMessageSource {
    private static final MessageSource ms = new MessageSource();

    protected MessageSource() {
        this.setBasenames("message");
    }

    public static String lan(String str) {
        return ms.getMessage(str, null, Locale.getDefault());
    }
}
