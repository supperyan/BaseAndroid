package com.yecal.jieyou.utils;

import android.app.Dialog;
import android.content.Context;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;

import com.yecal.jieyou.R;


public class LoadingDialog extends Dialog {
	private Context mContext;
	private LayoutInflater inflater;
	private LayoutParams lp;
	private TextView loadingText;

	public LoadingDialog(Context context, String content) {
		super(context, R.style.Dialog);

		this.mContext = context;
		// 设置点击对话框之外能消失
		setCanceledOnTouchOutside(true);
		inflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = inflater.inflate(R.layout.view_load_progress, null);
		loadingText = (TextView) layout.findViewById(R.id.progress_msg);
		if (null != content) {
			loadingText.setText(content);
			loadingText.setVisibility(View.GONE);
		}else{
			loadingText.setVisibility(View.GONE);
		}
		setContentView(layout);

		// 设置window属性
		lp = getWindow().getAttributes();
		lp.gravity = Gravity.CENTER;
		lp.dimAmount = 0; // 去背景遮盖
		lp.alpha = 1.0f;
		getWindow().setAttributes(lp);
	}
	
	public void setMessage(String message){
		this.loadingText.setText(message);
	}

	public LoadingDialog(Context context, String content, boolean iancleable) {
		super(context, R.style.Dialog);

		this.mContext = context;
		// 设置点击对话框之外能消失
		setCanceledOnTouchOutside(iancleable);

		inflater = (LayoutInflater) mContext
				.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View layout = inflater.inflate(R.layout.view_load_progress, null);
		loadingText = (TextView) layout.findViewById(R.id.progress_msg);
		if (null != content) {
			loadingText.setText(content);
		}
		setContentView(layout);

		// 设置window属性
		lp = getWindow().getAttributes();
		lp.gravity = Gravity.CENTER;
		lp.dimAmount = 0; // 去背景遮盖
		lp.alpha = 1.0f;
		getWindow().setAttributes(lp);
	}
}
