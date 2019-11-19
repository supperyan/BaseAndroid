package com.yecal.qianding.ui.welcome;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

import com.yecal.qianding.R;
import com.yecal.qianding.base.activity.BaseActivity;
import com.yecal.qianding.system.DatasStore;
import com.yecal.qianding.ui.MainActivity;
import com.yecal.qianding.ui.login.LoginActivity;

/**
 * Created by Administrator on 2018/4/7 0007.
 */

public class SplashActivity extends BaseActivity {
    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_splash);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        startApp();
    }

    private void startApp() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

                if (DatasStore.isFirstLaunch()) {
                    WelcomeActivity.start(SplashActivity.this);
                } else if (DatasStore.isLogin()) {
                    MainActivity.start(SplashActivity.this);
                } else {
                    LoginActivity.start(SplashActivity.this);
                }
                finish();
            }
        }).start();
    }

}
