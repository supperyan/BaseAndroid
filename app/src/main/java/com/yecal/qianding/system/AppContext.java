package com.yecal.qianding.system;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.multidex.MultiDex;
import android.view.Gravity;

import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.yecal.qianding.R;
import com.yecal.qianding.utils.DataCleanManager;
import com.yecal.qianding.utils.MethodsCompat;
import com.yecal.qianding.utils.ThreadUtils;

public class AppContext extends CrashReportingApplication {

    private static final String TAG = AppContext.class.getSimpleName();
    private static AppContext mContext;


    @Override
    public void onCreate() {
        super.onCreate();
        mContext = this;
        // 工具类初始化
        Utils.init(this);
    }

    @Override
    public String getReportUrl() {
        return null;
    }

    @Override
    public Bundle getCrashResources() {
        return null;
    }

    //dex65k限制
    @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(this);
    }

    public static AppContext getInstance() {
        return mContext;
    }

    /**
     * 清除app缓存
     */
    public void clearAppCache(boolean showToast) {
        final Handler handler = showToast ? new Handler() {
            @Override
            public void handleMessage(Message msg) {
                if (msg.what == 1) {
                    ToastUtils.showShort("缓存清除成功");
                } else {
                    ToastUtils.showShort("缓存清除失败");
                }
            }
        } : null;
        ThreadUtils.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Message msg = new Message();
                try {
                    clearAppCache();
                    msg.what = 1;
                } catch (Exception e) {
                    e.printStackTrace();
                    msg.what = -1;
                }
                if (handler != null)
                    handler.sendMessage(msg);
            }
        });
    }

    /**
     * 清除app缓存
     */
    public void clearAppCache() {
        DataCleanManager.cleanDatabases(this);
        // 清除数据缓存
        DataCleanManager.cleanInternalCache(this);
        // 2.2版本才有将应用缓存转移到sd卡的功能
        if (isMethodsCompat(android.os.Build.VERSION_CODES.FROYO)) {
            DataCleanManager.cleanCustomCache(MethodsCompat
                    .getExternalCacheDir(this));
        }

    }

    /**
     * 判断当前版本是否兼容目标版本的方法
     *
     * @param VersionCode
     * @return
     */
    public static boolean isMethodsCompat(int VersionCode) {
        int currentVersion = android.os.Build.VERSION.SDK_INT;
        return currentVersion >= VersionCode;
    }
}
