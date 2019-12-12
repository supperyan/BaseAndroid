package com.yecal.jieyou.ui.nearby;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;

import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.activity.BaseActivity;
import com.yecal.jieyou.baseUi.fragment.BaseFragment;
import com.yecal.jieyou.ui.mine.MineFragment;

import android.support.design.widget.TabLayout;
import android.view.ViewGroup;
import android.widget.ImageView;

import java.util.ArrayList;
import java.util.List;

public class UserInfoActivity extends BaseActivity {

    private String[] s=new String[]{"主页","销售","我的"};
    private List<BaseFragment> list;
    private TabLayout mTablayout;
    private ViewPager viewpager;

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_userinfo);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
        initTitle();
    }
    private void initView() {
        mTablayout= (TabLayout) findViewById(R.id.mTable);
        viewpager= (ViewPager) findViewById(R.id.viewpager);
    }
    private void initTitle() {
        list=new ArrayList<>();
        list.add(new MineFragment());
        list.add(new MineFragment());
        list.add(new MineFragment());
        MyAdapter adapter=new MyAdapter(getSupportFragmentManager(),list,s);
        viewpager.setAdapter(adapter);
        mTablayout.setupWithViewPager(viewpager);
    }
    public class MyAdapter extends FragmentPagerAdapter {
        private List<BaseFragment> list;
        private String[] s;
        public MyAdapter(FragmentManager fm, List<BaseFragment> list, String[] s) {
            super(fm);
            this.list=list;
            this.s=s;
        }

        @Override
        public Fragment getItem(int position) {
            return list.get(position);
        }

        @Override
        public int getCount() {
            return list.size();
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view==object;
        }

        @Override
        public CharSequence getPageTitle(int position) {
            return s[position];
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            return super.instantiateItem(container, position);
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            super.destroyItem(container, position, object);
        }
    }

    public static void start(Context context, String userId) {
        Intent starter = new Intent(context, UserInfoActivity.class);
        starter.putExtra("userId", userId);
        context.startActivity(starter);
    }
}
