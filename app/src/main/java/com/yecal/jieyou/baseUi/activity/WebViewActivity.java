package com.yecal.jieyou.baseUi.activity;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;

import com.yecal.jieyou.webview.config.IWebPageView;


public abstract class WebViewActivity extends BaseActivity implements IWebPageView {

    protected WebView _webView;
    private String _title;
    private boolean _firstResume = true;
    private boolean _loadSuccess = false;

    protected abstract String getUrl();

    protected void goBack() {
        finish();
    }

    protected void goNext() {
        _webView.reload();
    }

    @Override
    protected void setTitle(String title) {
        _title = title;
        super.setTitle(title);
    }

    @Override
    protected View onCreateContentView() {
        _webView = new WebView(this);
        _webView.setLayoutParams(new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.MATCH_PARENT, RelativeLayout.LayoutParams.MATCH_PARENT));
        return _webView;
    }

    @SuppressLint("SetJavaScriptEnabled")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        //FIXME  设置左右按钮

        WebSettings settings = _webView.getSettings();

        _webView.setBackgroundColor(0);
        settings.setUseWideViewPort(true);
        _webView.setBackgroundColor(Color.TRANSPARENT);
//        if (Build.VERSION.SDK_INT >= 19) {//硬件加速器的使用
//            mWebView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
//        } else {
//            mWebView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
//        }
        settings.setLoadWithOverviewMode(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        _webView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
        settings.setJavaScriptEnabled(true);
        _webView.setWebViewClient(new WebViewClient() {
            @Override
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                super.onPageStarted(view, url, favicon);
                showLoading("正在加载页面…");
                _loadSuccess = true;
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                hideLoading();

                if (_loadSuccess) {
                    if (_title == null) {
                        setTitle(view.getTitle());
                    }
                } else {
                    //ToastUtils.showShort(WebViewActivity.this, "加载页面失败, 请刷新重试");
                }
            }

            @Override
            public void onReceivedError(WebView view, int errorCode,
                                        String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                _loadSuccess = false;
            }
        });
        _webView.getSettings().setJavaScriptEnabled(true);
        _webView.setWebChromeClient(new WebChromeClient() {
            /**
             * 处理加载进度
             *
             * @param view
             * @param newProgress
             */
//        @Override
//        public void onProgressChanged(WebView view, int newProgress) {
//            pro_webview.setVisibility(View.VISIBLE);
//            pro_webview.setProgress(newProgress);
//            if (pro_webview.getProgress() == pro_webview.getMax()) {
//                pro_webview.setVisibility(View.GONE);
//            }
//            super.onProgressChanged(view, newProgress);
//        }

            /**
             * alert弹框
             *
             * @return
             */
            @Override
            public boolean onJsAlert(WebView view, String url, final String message, JsResult result) {

                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {

                        new AlertDialog.Builder(WebViewActivity.this)
                                .setTitle("提示")
                                .setMessage(message)
                                .setPositiveButton("确定", new DialogInterface.OnClickListener() {
                                    @Override
                                    public void onClick(DialogInterface dialog, int which) {
                                        _webView.reload();//重写刷新页面

                                    }
                                })
                                .setNegativeButton("取消",null)
                                .show();

                    }
                });
                result.confirm();//这里必须调用，否则页面会阻塞造成假死
                return true;
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();

        if (_firstResume) {
            _webView.loadUrl(getUrl());
            _firstResume = false;
        }
    }

    public void onBackPressed() {
        if (_webView.canGoBack()) {
            _webView.goBack();
        } else {
            goBack();
        }
    }

}
