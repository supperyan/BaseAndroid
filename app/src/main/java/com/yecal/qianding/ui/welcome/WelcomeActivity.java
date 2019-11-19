package com.yecal.qianding.ui.welcome;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.yecal.qianding.R;
import com.yecal.qianding.base.activity.BaseActivity;
import com.yecal.qianding.system.DatasStore;
import com.yecal.qianding.ui.MainActivity;
import com.yecal.qianding.ui.login.LoginActivity;
import com.yecal.qianding.utils.CircleIndicator;
import java.util.ArrayList;
import java.util.List;
import butterknife.BindView;
import butterknife.OnClick;

public class WelcomeActivity extends BaseActivity {
    @BindView(R.id.pager)
    ViewPager mPager;
    @BindView(R.id.indicator)
    CircleIndicator mIndicator;
    @BindView(R.id.welcome_jump)
    TextView jump;
    @BindView(R.id.welcome_experience)
    TextView experience;

    private int[] imageIds = {R.drawable.ic_launcher_background, R.drawable.ic_launcher_background, R.drawable.ic_launcher_background};
    private List<ImageView> imageViews = new ArrayList<>();
    private WelcomePagerAdapter mAdaper;

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_welcome);
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        }
        initView();
    }

    private void initView() {
        for (int id : imageIds) {
            ImageView imageView = new ImageView(this);
            // TODO: 2016/10/25 第三方加载图片
            Glide.with(this).load(id).into(imageView);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageViews.add(imageView);
        }

        mAdaper = new WelcomePagerAdapter(imageViews);
        mPager.setAdapter(mAdaper);
        mIndicator.setViewPager(mPager);

        mPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            //此方法是在状态改变的时候调用，其中arg0这个参数有三种状态（0，1，2）。
            //arg0 ==1的时辰默示正在滑动，arg0==2的时辰默示滑动完毕了，arg0==0的时辰默示什么都没做。
            //当页面开始滑动的时候，三种状态的变化顺序为（1，2，0）
            public void onPageScrollStateChanged(int arg0) {
            }

            //此方法里有3个参数</span></span>
            //当你滑动时一直调用这个方法直到停止滑到
            //arg0：表示现在的页面； arg1：表示当前页面偏移百分比； arg2：表示当前页面偏移的像素；
            public void onPageScrolled(int arg0, float arg1, int arg2) {
            }

            //此方法里的 arg0 是表示显示的第几页，当滑到第N页，就会调用此方法，arg0=N；
            public void onPageSelected(int arg0) {
                switch (arg0) {
                    case 0:
                    case 1:
                        experience.setVisibility(View.GONE);
                        mIndicator.setVisibility(View.VISIBLE);
                        break;
                    case 2:
                        experience.setVisibility(View.VISIBLE);
                        mIndicator.setVisibility(View.GONE);
                        break;
                    default:
                        break;
                }
            }
        });
    }

    @OnClick({R.id.welcome_jump, R.id.welcome_experience})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.welcome_jump:
            case R.id.welcome_experience:
                DatasStore.setFirstLaunch(false);
                if (DatasStore.isLogin()) {
                    MainActivity.start(WelcomeActivity.this);
                } else {
                    LoginActivity.start(WelcomeActivity.this);
                }
                finish();
                break;
        }
    }

    private class WelcomePagerAdapter extends PagerAdapter {
        List<ImageView> imageViews;

        public WelcomePagerAdapter(List<ImageView> imageViews) {
            this.imageViews = imageViews;
        }

        @Override
        public int getCount() {
            if (imageViews != null) return imageViews.size();
            return 0;
        }

        @Override
        public boolean isViewFromObject(View arg0, Object arg1) {
            return arg0 == arg1;
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView((View) object);
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            ImageView imageView = imageViews.get(position);
            container.addView(imageView);
            return imageView;
        }
    }

    public static void start(Context context) {
        Intent starter = new Intent(context, WelcomeActivity.class);
        context.startActivity(starter);
    }

}
