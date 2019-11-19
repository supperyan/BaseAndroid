package com.yecal.qianding.webview.config;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/**
 */

public class FullscreenHolder extends FrameLayout {

    public FullscreenHolder(Context ctx) {
        super(ctx);
        setBackgroundColor(ctx.getResources().getColor(android.R.color.black));
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        return true;
    }
}
