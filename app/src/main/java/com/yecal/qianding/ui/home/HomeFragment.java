package com.yecal.qianding.ui.home;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import com.yecal.qianding.R;
import com.yecal.qianding.base.fragment.BaseFragment;

/**
 * Created by yecal on 2018/5/30.
 */

public class HomeFragment extends BaseFragment {

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
    }
}
