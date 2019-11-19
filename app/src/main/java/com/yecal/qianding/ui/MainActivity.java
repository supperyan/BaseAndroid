package com.yecal.qianding.ui;

import android.app.AppOpsManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.support.v7.app.AlertDialog;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yecal.qianding.R;
import com.yecal.qianding.base.activity.BaseFragmentActivity;
import com.yecal.qianding.base.fragment.BaseFragment;
import com.yecal.qianding.jPush.ExampleUtil;
import com.yecal.qianding.jPush.LocalBroadcastManager;
import com.yecal.qianding.ui.home.HomeFragment;
import com.yecal.qianding.utils.DoubleClickExitUtils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

import butterknife.BindView;
import butterknife.OnClick;

/**
 * 主页面
 */
public class MainActivity extends BaseFragmentActivity {

    @BindView(R.id.tabRL0)
    RelativeLayout tabRL0;
    @BindView(R.id.tabRL1)
    RelativeLayout tabRL1;
    @BindView(R.id.tabRL2)
    RelativeLayout tabRL2;
    @BindView(R.id.tabRL3)
    RelativeLayout tabRL3;

    @BindView(R.id.iv_0)
    ImageView iv_0;
    @BindView(R.id.iv_1)
    ImageView iv_1;
    @BindView(R.id.iv_2)
    ImageView iv_2;
    @BindView(R.id.iv_3)
    ImageView iv_3;

    @BindView(R.id.tv_0)
    TextView tv_0;
    @BindView(R.id.tv_1)
    TextView tv_1;
    @BindView(R.id.tv_2)
    TextView tv_2;
    @BindView(R.id.tv_3)
    TextView tv_3;

    @BindView(R.id.cicle_num_tv)
    TextView cicle_num_tv;

    private DoubleClickExitUtils duClickExitHelper;

    public static boolean isForeground = false;
    //for receive customer msg from jpush server
    private MessageReceiver mMessageReceiver;
    public static final String MESSAGE_RECEIVED_ACTION = "com.example.jpushdemo.MESSAGE_RECEIVED_ACTION";
    public static final String KEY_TITLE = "title";
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_EXTRAS = "extras";

    private ArrayList<Class<? extends BaseFragment>> fragments;

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_main);
    }

    @Override
    protected ArrayList<Class<? extends BaseFragment>> fragmentClasses() {
        fragments = new ArrayList<>();
        fragments.add(HomeFragment.class);
        fragments.add(HomeFragment.class);
        fragments.add(HomeFragment.class);
        fragments.add(HomeFragment.class);

        return fragments;
    }

    @Override
    protected int containerViewId() {
        return R.id.contentFL;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        registerMessageReceiver();  // used for receive msg
        enableTabItem(0);
        duClickExitHelper = new DoubleClickExitUtils(this);

    }

    public void registerMessageReceiver() {
        mMessageReceiver = new MessageReceiver();
        IntentFilter filter = new IntentFilter();
        filter.setPriority(IntentFilter.SYSTEM_HIGH_PRIORITY);
        filter.addAction(MESSAGE_RECEIVED_ACTION);
        LocalBroadcastManager.getInstance(this).registerReceiver(mMessageReceiver, filter);
    }

    public static void into(Context context) {
        Intent starter = new Intent(context, MainActivity.class);
        context.startActivity(starter);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager.getInstance(this).unregisterReceiver(mMessageReceiver);
    }

    public void enableTabItem(int position) {
        if (0 > position || 4 < position)
            return;

        iv_0.setEnabled(false);
        iv_1.setEnabled(false);
        iv_2.setEnabled(false);
        iv_3.setEnabled(false);

        tv_0.setEnabled(false);
        tv_1.setEnabled(false);
        tv_2.setEnabled(false);
        tv_3.setEnabled(false);
        switch (position) {
            case 0:
                iv_0.setEnabled(true);
                tv_0.setEnabled(true);
                break;
            case 1:
                iv_1.setEnabled(true);
                tv_1.setEnabled(true);
                break;
            case 2:
                iv_2.setEnabled(true);
                tv_2.setEnabled(true);
                break;
            case 3:
                iv_3.setEnabled(true);
                tv_3.setEnabled(true);
                break;
            default:
                break;
        }
    }

    @OnClick({R.id.tabRL0, R.id.tabRL1, R.id.tabRL2, R.id.tabRL3})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tabRL0:
                enableTabItem(0);
                selectPage(0);
                break;
            case R.id.tabRL1:
                enableTabItem(1);
                selectPage(1);
                break;
            case R.id.tabRL2:
                enableTabItem(2);
                selectPage(2);
                break;
            case R.id.tabRL3:
                enableTabItem(3);
                selectPage(3);
                break;
        }
    }

    public static void start(Context context) {
        Intent starter = new Intent(context, MainActivity.class);
        context.startActivity(starter);
    }

    public class MessageReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            try {
                if (MESSAGE_RECEIVED_ACTION.equals(intent.getAction())) {
                    String messge = intent.getStringExtra(KEY_MESSAGE);
                    String extras = intent.getStringExtra(KEY_EXTRAS);
                    StringBuilder showMsg = new StringBuilder();
                    showMsg.append(KEY_MESSAGE + " : " + messge + "\n");
                    if (!ExampleUtil.isEmpty(extras)) {
                        showMsg.append(KEY_EXTRAS + " : " + extras + "\n");
                    }
                    setCostomMsg(showMsg.toString());
                }
            } catch (Exception e){
            }
        }
    }

    private void setCostomMsg(String msg){
        if (null != cicle_num_tv) {
            cicle_num_tv.setText(msg);
            cicle_num_tv.setVisibility(View.VISIBLE);
        }
    }

}
