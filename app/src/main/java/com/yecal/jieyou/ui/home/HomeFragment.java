package com.yecal.jieyou.ui.home;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.flyco.tablayout.SlidingTabLayout;
import com.uuch.adlibrary.AdConstant;
import com.uuch.adlibrary.AdManager;
import com.uuch.adlibrary.bean.AdInfo;
import com.uuch.adlibrary.transformer.DepthPageTransformer;
import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.activity.BaseWebViewActivity;
import com.yecal.jieyou.baseUi.fragment.BaseFragment;
import com.yecal.jieyou.ui.home.fragment.GameFragment;
import com.yecal.jieyou.ui.home.fragment.RecommendFragment;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;

/**
 * Created by yecal on 2018/5/30.
 */

public class HomeFragment extends BaseFragment {

    @BindView(R.id.home_tv)
    TextView homeTv;
    Unbinder unbinder;
    @BindView(R.id.home_avatar)
    ImageView homeAvatar;
    @BindView(R.id.home_search)
    LinearLayout homeSearch;
    @BindView(R.id.home_more)
    ImageView homeMore;
    @BindView(R.id.tablayout)
    SlidingTabLayout tablayout;
    @BindView(R.id.viewpager)
    ViewPager viewpager;
    private ArrayList<AdInfo> advList = new ArrayList<>();
    private MyPagerAdapter mAdapter;
    private ArrayList<Fragment> mFragments = new ArrayList<>();
    private final String[] mTitles = {"推荐", "玩赚游戏", "快赚", "程序帮", "心灵", "大神推荐"};

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
        initView();
        initAdData();
    }

    private void initView() {
        mFragments.add(RecommendFragment.getInstance("推荐"));
        mFragments.add(GameFragment.getInstance("玩赚游戏"));
        for (int i = 2; i < mTitles.length; i++) {
            mFragments.add(GameFragment.getInstance(mTitles[i]));
        }
        mAdapter = new MyPagerAdapter(getActivity().getSupportFragmentManager());
        viewpager.setOffscreenPageLimit(mTitles.length);
        viewpager.setAdapter(mAdapter);
        tablayout.setViewPager(viewpager);
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

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        // TODO: inflate a fragment view
        View rootView = super.onCreateView(inflater, container, savedInstanceState);
        unbinder = ButterKnife.bind(this, rootView);
        return rootView;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();
    }

    @OnClick({R.id.home_tv, R.id.home_avatar, R.id.home_search, R.id.home_more})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.home_tv:
                TaskActivity.start(getActivity());
                break;
            case R.id.home_avatar:
                break;
            case R.id.home_search:
                break;
            case R.id.home_more:
                break;
        }
    }

    private class MyPagerAdapter extends FragmentPagerAdapter {
        public MyPagerAdapter(FragmentManager fm) {
            super(fm);
        }

        @Override
        public int getCount() {
            return mFragments.size();
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return mTitles[position];
        }

        @Override
        public Fragment getItem(int position) {
            return mFragments.get(position);
        }
    }
}
