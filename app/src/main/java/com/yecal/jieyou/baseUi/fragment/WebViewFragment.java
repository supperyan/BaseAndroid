package com.yecal.jieyou.baseUi.fragment;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

import com.blankj.utilcode.util.ToastUtils;


public abstract class WebViewFragment extends BaseFragment {

    protected WebView mWebView;
    private boolean mIsWebViewAvailable;
    private String _title;
    private boolean _firstResume = true;
    private boolean _loadSuccess = false;

    protected abstract String getUrl();


    protected void goNext() {
        mWebView.reload();
    }

    @Override
    protected void setTitle(String title) {
        _title = title;
        super.setTitle(title);
    }

    @Override
    protected View onCreateContentView() {
        if (mWebView != null) {
            mWebView.destroy();
        }
        mWebView = new WebView(getContext());
        mIsWebViewAvailable = true;
        return mWebView;

    }


    public boolean haveTitle() {
        return true;
    }

    @TargetApi(Build.VERSION_CODES.HONEYCOMB)
    @RequiresApi(api = Build.VERSION_CODES.ECLAIR_MR1)
    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        WebSettings settings = mWebView.getSettings();
        mWebView.setBackgroundColor(0);
        settings.setUseWideViewPort(true);
        mWebView.setBackgroundColor(Color.TRANSPARENT);
//        if (Build.VERSION.SDK_INT >= 19) {//硬件加速器的使用
//            mWebView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
//        } else {
//            mWebView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
//        }
        settings.setLoadWithOverviewMode(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        mWebView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
        settings.setJavaScriptEnabled(true);
        mWebView.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
              //  showLoading("正在加载页面…");
                _loadSuccess = true;
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                hideLoading();

                if (haveTitle()) {
                    if (_loadSuccess) {
                        if (_title == null) {
                            setTitle(view.getTitle());
                        }
                    } else {
                        ToastUtils.showShort("加载页面失败, 请刷新重试");
                    }
                }


            }

            @Override
            public void onReceivedError(WebView view, int errorCode,
                                        String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                _loadSuccess = false;
            }
        });
    }


    @Override
    protected void lazyLoad() {
        super.lazyLoad();
        if (_firstResume) {
            mWebView.loadUrl(getUrl());
            _firstResume = false;
        }
    }

    /**
     * Called when the fragment is visible to the user and actively running. Resumes the WebView.
     */
    @Override
    public void onPause() {
        super.onPause();
        mWebView.onPause();
    }

    /**
     * Called when the fragment is no longer resumed. Pauses the WebView.
     */
    @Override
    public void onResume() {
        mWebView.onResume();
        super.onResume();
    }

    /**
     * Called when the WebView has been detached from the fragment.
     * The WebView is no longer available after this time.
     */
    @Override
    public void onDestroyView() {
        mIsWebViewAvailable = false;
        super.onDestroyView();
    }

    /**
     * Called when the fragment is no longer in use. Destroys the internal state of the WebView.
     */
    @Override
    public void onDestroy() {
        if (mWebView != null) {
            mWebView.destroy();
            mWebView = null;
        }
        super.onDestroy();
    }

    /**
     * Gets the WebView.
     */
    public WebView getWebView() {
        return mIsWebViewAvailable ? mWebView : null;
    }
}
