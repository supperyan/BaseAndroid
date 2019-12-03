package com.yecal.jieyou.ui.mine;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.fragment.BaseFragment;

/**
 * Created by yecal on 2018/5/30.
 */

public class MineFragment extends BaseFragment {

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
