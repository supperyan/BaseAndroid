package com.yecal.jieyou.system;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.blankj.utilcode.util.ToastUtils;
import com.google.gson.Gson;
import com.yecal.jieyou.model.MemberModel;

import java.lang.reflect.Type;


/**
 * 数据存取
 *
 * @author
 */
public class DatasStore {
    private static AppContext myApp = AppContext.getInstance();
    public static SharedPreferences infoSP = myApp.getSharedPreferences("jieyou_info", Context.MODE_PRIVATE);
    private static final String KEY_FIRST_LAUNCH = "fistLaunch";

    public static void setFirstLaunch(Boolean mm) {
        infoSP.edit().putBoolean(KEY_FIRST_LAUNCH, mm)
                .commit();
    }

    public static Boolean isFirstLaunch() {
        return infoSP.getBoolean(KEY_FIRST_LAUNCH, true);
    }

    private static String KEY_SAVE_PASSWORD = "isSavePassword";

    /**
     * 读取登陆页面"记住密码"复选框状态
     *
     * @return
     */
    public static boolean isSavePassword() {
        return infoSP.getBoolean(KEY_SAVE_PASSWORD, false);
    }

    /**
     * 保存登陆页面"记住密码"复选框状态
     *
     * @return
     */
    public static void setSavePassword(boolean isSave) {
        infoSP.edit().putBoolean(KEY_SAVE_PASSWORD, isSave).commit();
    }

    /**
     * 读取保存的String
     *
     * @return
     */
    public static String getString(String key) {
        return infoSP.getString(key, "");
    }

    /**
     * 保存String
     *
     * @return
     */
    public static void saveString(String key, String vaue) {
        infoSP.edit().putString(key, vaue).commit();
    }


    private static final String CUR_MEMBER_KEY = "curMember";

    // 存档会员信息
    public static void setCurMember(MemberModel mm) {
        if (mm == null) {
            ToastUtils.showShort("模型消息：setCurMember 模型为 null");
            return;
        }
        String verString = mm.isLegal();
        if (verString.equals("access")) {
            putObj2Sp(infoSP, CUR_MEMBER_KEY, mm);
        } else {
            ToastUtils.showShort("模型消息：setCurMember" + verString);
        }
    }

    // 获取会员信息
    public static MemberModel getCurMember() {
        MemberModel mmMemberModel = (MemberModel) getObjectFromSp(
                infoSP, CUR_MEMBER_KEY, MemberModel.class);

        if (mmMemberModel == null) {
            return new MemberModel();
        }
        String verString = mmMemberModel.isLegal();
        if (!verString.equals("access")) {
            ToastUtils.showShort("模型消息：getCurMember" + verString);
            return null;
        }

        return mmMemberModel;
    }

    // 清除当前用户
    public static void removeCurMember() {
        infoSP.edit().remove(CUR_MEMBER_KEY).commit();// 移除
    }

    // 判断是否登录
    public static boolean isLogin() {
        if (getCurMember() != null && getCurMember().mobile != null) {
            return true;
        } else {
            return false;
        }
    }

    // gson一个对象并存储 如果为null 就删除原有对象
    public static void putObj2Sp(SharedPreferences sp, String key, Object o) {
        if (o != null) {
            Gson gson = new Gson();
            try {
                String ssString = gson.toJson(o, o.getClass());
                sp.edit().putString(key, ssString).commit();
            } catch (Exception e) {
                Log.e("putObj2Sp json转换出错: ", e.getMessage());
            }
        } else {
            sp.edit().remove(key).commit();
        }
    }

    // 获取一个对象 getObjectFromSp(String key,*.class) 失败返回null
    public static Object getObjectFromSp(SharedPreferences sp, String key, Type type) {
        Gson gson = new Gson();
        String ssString = sp.getString(key, "");
        return gson.fromJson(ssString, type);
    }

    /**
     * 保存对设备的备注
     *
     * @return
     */
    public static void setDevicename(int number, String name) {
        infoSP.edit().putString("device" + number, name).commit();
    }

    /**
     * 获取对设备的备注
     *
     * @return
     */
    public static String getDevicename(int number) {
        return infoSP.getString("device" + number, "");
    }

    /**
     * 清理对设备的备注
     *
     * @return
     */
    public static void clearDevicename(String number) {
        infoSP.edit().remove(number).commit();
    }
}
