package com.yecal.jieyou.baseUi.titlebar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.yecal.jieyou.R;


/**
 * Created by  on 15/7/7.
 * 导航栏
 */
public class NavigationBar extends RelativeLayout {
    public TextView mTxtTitle;
    public TextView mTxtRight;
    public RelativeLayout mlayoutBg;
    public ImageView mIvBack;
    public ImageView mIvRight;
    public TextView mTxtRelease;


    //消息
    public RelativeLayout mLayoutNotification;
    //通知
    public TextView mTxtNotification;
    public ImageView mIvNotification;

    public NavigationBar(Context context) {
        super(context);
        initWidthContext(context);
    }

    public NavigationBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        initWidthContext(context);
    }

    public NavigationBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        initWidthContext(context);
    }

    protected void initWidthContext(Context context) {
        LayoutInflater.from(context).inflate(R.layout.common_navigationbar, this, true);

        mIvBack = (ImageView) findViewById(R.id.nav_bar_back);
        mLayoutNotification = (RelativeLayout) findViewById(R.id.layout_notification);
        mTxtTitle = (TextView) findViewById(R.id.nav_bar_title);
        mIvNotification = (ImageView) findViewById(R.id.iv_notifation);
        mlayoutBg = (RelativeLayout) findViewById(R.id.nav_bar_bg);
        mTxtRight = (TextView) findViewById(R.id.nav_bar_right_txt);
        mIvRight = (ImageView) findViewById(R.id.nav_bar_right_image);
        mTxtRelease = (TextView) findViewById(R.id.txt_release);
        mTxtNotification = (TextView) findViewById(R.id.txt_notification);

    }

    public void setTitle(String title) {
        mTxtTitle.setVisibility(View.VISIBLE);
        mTxtTitle.setText(title);
    }

    public CharSequence getTitle() {
        return mTxtTitle.getText();
    }

    public void setTitle(int resid) {
        mTxtTitle.setVisibility(View.VISIBLE);
        mTxtTitle.setText(resid);
    }

    public void registerRightTitle(String title, OnClickListener listener) {
        if (listener == null) {
            mTxtRelease.setVisibility(View.INVISIBLE);
        } else {
            mTxtRelease.setText(title);
            mTxtRelease.setVisibility(View.VISIBLE);
            mTxtRelease.setOnClickListener(listener);
        }
    }

    public void registerRightTitle(String title, int Color, OnClickListener listener) {
        if (listener == null) {
            mTxtRelease.setVisibility(View.INVISIBLE);
        } else {
            mTxtRelease.setText(title);
            mTxtRelease.setTextColor(ContextCompat.getColor(getContext(), Color));
            mTxtRelease.setVisibility(View.VISIBLE);
            mTxtRelease.setOnClickListener(listener);
        }
    }

    public void registerRightImage(int resid, OnClickListener listener) {
        if (listener == null) {
            mIvRight.setVisibility(View.INVISIBLE);
        } else {
            mIvRight.setImageResource(resid);
            mIvRight.setVisibility(View.VISIBLE);
            mIvRight.setOnClickListener(listener);
        }
    }

    public void setRightPoint(int title, OnClickListener listener) {
        if (listener == null) {
            mTxtRight.setVisibility(View.INVISIBLE);
        } else {
            mTxtRight.setText(title);
            mTxtRight.setVisibility(View.VISIBLE);
            mTxtRight.setOnClickListener(listener);
        }
    }

    public void registerRightTitle(int title, OnClickListener listener) {
        if (listener == null) {
            mTxtRelease.setVisibility(View.INVISIBLE);
        } else {
            mTxtRelease.setText(title);
            mTxtRelease.setVisibility(View.VISIBLE);
            mTxtRelease.setOnClickListener(listener);
        }
    }

    public void registerRightImageTitle(int title, int resid, OnClickListener listener) {
        if (listener == null) {
            mTxtRelease.setVisibility(View.INVISIBLE);
        } else {
            mTxtRelease.setText(title);
            Drawable drawable = ContextCompat.getDrawable(getContext(), resid);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            mTxtRelease.setCompoundDrawables(null, drawable, null, null);
            mTxtRelease.setVisibility(View.VISIBLE);
            mTxtRelease.setOnClickListener(listener);
        }
    }

    public void registerRightImageTitle(String title, int resid, OnClickListener listener) {
        if (listener == null) {
            mTxtRelease.setVisibility(View.INVISIBLE);
        } else {
            mTxtRelease.setText(title);
            Drawable drawable = ContextCompat.getDrawable(getContext(), resid);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            mTxtRelease.setCompoundDrawables(null, null, drawable, null);
            mTxtRelease.setVisibility(View.VISIBLE);
            mTxtRelease.setOnClickListener(listener);
        }
    }

    public void registerBack(int resid, OnClickListener listener) {
        if (listener == null) {
            mIvBack.setVisibility(View.INVISIBLE);
        } else {
            mIvBack.setImageResource(resid);
            mIvBack.setVisibility(View.VISIBLE);
            mIvBack.setOnClickListener(listener);
        }
    }

    public View getmTxtBack() {
        return mIvBack;
    }


}
