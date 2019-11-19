package com.yecal.qianding.utils;

import android.widget.EditText;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
