package com.yecal.jieyou.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;

import com.yecal.jieyou.R;

/**
 * Created by wujian on 15/6/25.
 * <p>
 * Loading对话框管理
 */
public class LoadingHandler {


    private LoadingDialog _loadingDialog;
    private Context _context;
    private boolean _hideLoading;

    public LoadingHandler(Context context) {
        _context = context;
    }


    public void showLoading() {
        showLoading(_context.getString(R.string.loading));
    }


    public void showLoading(final String message) {

        if (_loadingDialog != null)
            return;
        _hideLoading = false;
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                if (!_hideLoading) {
                    _loadingDialog =
                            new LoadingDialog(_context, message);
                    _loadingDialog.setMessage(message);
                    _loadingDialog.show();
                    _loadingDialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
                        @Override
                        public void onCancel(DialogInterface dialog) {
                            _hideLoading = true;
                            _loadingDialog = null;

                        }


                    });
                }

            }
        }, 100);

    }

    public void updateLoading(String message) {

        if (_loadingDialog != null)
            _loadingDialog.setMessage(message);
    }

    public void hideLoading() {
        ThreadUtils.runOnUiThread(new Runnable() {
            @Override
            public void run() {
                _hideLoading = true;
                if (_loadingDialog != null) {
                    if(_loadingDialog.isShowing())
                        _loadingDialog.cancel();
                    _loadingDialog = null;
                }

            }
        });


    }
}
