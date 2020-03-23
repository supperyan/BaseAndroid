package com.yecal.jieyou.ui.home.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.fragment.BaseFragment;
import com.yecal.jieyou.utils.GlideImageLoader;
import com.youth.banner.Banner;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;

public class GameFragment extends BaseFragment {

    @BindView(R.id.game_banner)
    Banner banner;
    Unbinder unbinder;
    private ArrayList<String> bannerList = new ArrayList<>();
    private String mTitle;

    public static GameFragment getInstance(String title) {
        GameFragment sf = new GameFragment();
        sf.mTitle = title;
        return sf;
    }

    protected View onCreateContentView() {
        return inflateContentView(R.layout.fragment_game);
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initBanner();
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

    private void initBanner() {
        //设置图片加载器
        bannerList.add("https://about.canva.com/wp-content/uploads/sites/3/2019/04/201904%E9%A3%9F%E5%93%81%E7%BE%8E%E9%A3%9F%E4%BF%83%E9%94%80%E7%94%B5%E5%95%86banner%E8%AE%BE%E8%AE%A1%E6%A8%A1%E6%9D%BF9.jpg");
        bannerList.add("https://about.canva.com/wp-content/uploads/sites/3/2019/04/201904%E9%A3%9F%E5%93%81%E7%BE%8E%E9%A3%9F%E4%BF%83%E9%94%80%E7%94%B5%E5%95%86banner%E8%AE%BE%E8%AE%A1%E6%A8%A1%E6%9D%BF2.jpg");
        bannerList.add("https://about.canva.com/wp-content/uploads/sites/3/2019/04/x201904%E8%8A%82%E6%97%A5%E7%83%AD%E7%82%B9banner%E8%AE%BE%E8%AE%A1%E6%A8%A1%E6%9D%BF8.jpg");
        banner.setImageLoader(new GlideImageLoader());
        //设置图片集合
        banner.setImages(bannerList);
        //banner设置方法全部调用完毕时最后调用
        banner.start();
    }
}
