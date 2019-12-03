package com.yecal.jieyou.baseUi;

import android.support.multidex.MultiDexApplication;

public class BaseAppContext extends MultiDexApplication {
    private static BaseAppContext appContext;
    protected final static int DEFAULT_MEMMORY = 32;

    public void onCreate() {
        super.onCreate();
        appContext = this;
    }

    public static BaseAppContext getInstance() {
        return appContext;
    }
}
