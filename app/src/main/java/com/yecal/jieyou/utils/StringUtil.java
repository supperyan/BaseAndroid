package com.yecal.jieyou.utils;

import android.widget.EditText;

/**
 * String Utils
 *
 * @author <a href="http://www.trinea.cn" target="_blank">Trinea</a> 2011-7-22
 */
public class StringUtil {

    private StringUtil() {
        throw new AssertionError();
    }

    public static String getEditString(EditText edittext){
        return edittext.getText().toString().trim();
    }

}
