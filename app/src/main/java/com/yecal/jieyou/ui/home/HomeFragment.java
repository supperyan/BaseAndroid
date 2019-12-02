package com.yecal.jieyou.ui.home;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import com.uuch.adlibrary.AdConstant;
import com.uuch.adlibrary.AdManager;
import com.uuch.adlibrary.transformer.DepthPageTransformer;
import com.yecal.jieyou.R;
import com.uuch.adlibrary.bean.AdInfo;
import com.yecal.jieyou.base.activity.BaseWebViewActivity;
import com.yecal.jieyou.base.fragment.BaseFragment;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.ArrayList;

/**
 * Created by yecal on 2018/5/30.
 */

public class HomeFragment extends BaseFragment {

    private ArrayList<AdInfo> advList = new ArrayList<>();

    public static HomeFragment getInstance() {
        HomeFragment fragment = new HomeFragment();
        return fragment;
    }

    protected View onCreateContentView() {
        return inflateContentView(R.layout.fragment_home);
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initAdData();
    }

    private void initAdData() {
        AdInfo adInfo = new AdInfo();
        adInfo.setActivityImg("https://raw.githubusercontent.com/yipianfengye/android-adDialog/master/images/testImage1.png");
        adInfo.setUrl("www.baidu.com");
        advList.add(adInfo);

        adInfo = new AdInfo();
        adInfo.setActivityImg("https://raw.githubusercontent.com/yipianfengye/android-adDialog/master/images/testImage2.png");
        adInfo.setUrl("www.github.com");
        advList.add(adInfo);

        AdManager adManager = new AdManager(getActivity(), advList);
        adManager.setOverScreen(true)
                .setPageTransformer(new DepthPageTransformer())
                .setOnImageClickListener(new AdManager.OnImageClickListener() {
                    @Override
                    public void onImageClick(View view, AdInfo advInfo) {
                        BaseWebViewActivity.loadUrl(getActivity(), advInfo.getUrl(), false);
                    }
                });
        adManager.showAdDialog(AdConstant.ANIM_DOWN_TO_UP);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }
}
