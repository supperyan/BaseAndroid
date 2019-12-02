package com.yecal.jieyou.ui.home;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import com.uuch.adlibrary.AdConstant;
import com.uuch.adlibrary.AdManager;
import com.uuch.adlibrary.bean.AdInfo;
import com.uuch.adlibrary.transformer.DepthPageTransformer;
import com.yecal.jieyou.R;
import com.yecal.jieyou.base.activity.BaseWebViewActivity;
import com.yecal.jieyou.base.fragment.BaseFragment;

import java.util.ArrayList;

/**
 * Created by yecal on 2018/5/30.
 */

public class MineFragment extends BaseFragment {

    private ArrayList<AdInfo> advList = new ArrayList<>();

    public static MineFragment getInstance() {
        MineFragment fragment = new MineFragment();
        return fragment;
    }

    protected View onCreateContentView() {
        return inflateContentView(R.layout.fragment_home);
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }
}
