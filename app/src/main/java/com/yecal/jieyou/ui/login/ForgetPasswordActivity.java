package com.yecal.jieyou.ui.login;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.InputType;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;

import com.blankj.utilcode.util.RegexUtils;
import com.blankj.utilcode.util.StringUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.yecal.jieyou.R;
import com.yecal.jieyou.base.activity.BaseActivity;
import com.yecal.jieyou.utils.StringUtil;
import com.yecal.jieyou.view.ClearableEditText;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;

public class ForgetPasswordActivity extends BaseActivity {

    @BindView(R.id.forgetpassword_account)
    ClearableEditText account;
    @BindView(R.id.forgetpassword_code)
    ClearableEditText phoneCode;
    @BindView(R.id.forgetpassword_password)
    EditText password;
    @BindView(R.id.forgetpassword_updata)
    Button submit;
    @BindView(R.id.forgetpassword_get_code)
    Button getCode;
    @BindView(R.id.forgetpassword_eye)
    ImageView eye;

    @Override
    protected void onPostInject() {
        super.onPostInject();
        setTitle("找回密码");
        registerBack();
    }

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_forgetpassword);
    }

    /**
     * 获取验证码
     */
    private void getCode() {
        if (TextUtils.isEmpty(account.getText().toString())) {
            ToastUtils.showShort("手机号码不能为空");
            return;
        }
        if (account.getText().toString().length() < 11) {
            ToastUtils.showShort("手机号码不正确");
            return;
        }
//        new MemberModel().sendSMS(StringUtil.getEditString(account), 1, new BaseModel.BaseModelIB() {
//            @Override
//            public void StartOp() {
//                showLoading();
//            }
//
//            @Override
//            public void successful(Object o) {
//                hideLoading();
//                curSec = totalSec;
//                getCode.setEnabled(false);
//                reciprocal();
//            }
//
//            @Override
//            public void failed(ResultsModel resultsModel) {
//                hideLoading();
//                ToastUtils.showShort(resultsModel.getErrorMsg());
//
//            }
//        });

    }

    private Handler handler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            // TODO Auto-generated method stub
            super.handleMessage(msg);
            if (curSec <= 0) {
                getCode.setEnabled(true);
//                getCode.setTextColor(0xff000000);
                getCode.setText("获取验证码");
            } else {
                getCode.setText(curSec + "s");
//                getCode.setTextColor(0xffff0000);
                reciprocal();
            }

        }
    };

    private int totalSec = 60;// 总时间
    private int curSec;// 剩下多少秒

    /**
     * 倒数计时
     */
    private void reciprocal() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    curSec--;
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                handler.sendEmptyMessage(1);
            }
        }).start();
    }

    /**
     * 确认修改
     */
    private void goUpdataPassword() {
        if (!RegexUtils.isMobileExact(StringUtil.getEditString(account))) {
            ToastUtils.showShort("手机号码不正确");
            return;
        }
        if (StringUtils.isEmpty(StringUtil.getEditString(password))) {
            ToastUtils.showShort("密码输入错误！");
            return;
        }
        if (StringUtils.isEmpty(StringUtil.getEditString(phoneCode))) {
            ToastUtils.showShort("请输入验证码！");
            return;
        }

//        new MemberModel().forgetpassword(StringUtil.getEditString(account), StringUtil.getEditString(password), StringUtil.getEditString(phoneCode), new BaseModel.BaseModelIB() {
//            @Override
//            public void StartOp() {
//                showLoading();
//            }
//
//            @Override
//            public void successful(Object o) {
//                hideLoading();
////                ResultsModel model = (ResultsModel) o;
//                ToastUtils.showShort("注册成功");
//                finish();
//            }
//
//            @Override
//            public void failed(ResultsModel resultsModel) {
//                hideLoading();
//                ToastUtils.showShort(resultsModel.getErrorMsg());
//
//            }
//        });
    }

    public static void start(Context context) {
        Intent starter = new Intent(context, ForgetPasswordActivity.class);
        context.startActivity(starter);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // TODO: add setContentView(...) invocation
        ButterKnife.bind(this);
    }

    @OnClick({R.id.forgetpassword_get_code, R.id.forgetpassword_updata, R.id.forgetpassword_eye})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.forgetpassword_get_code:
                getCode();
                break;
            case R.id.forgetpassword_updata:
                goUpdataPassword();
                break;
            case R.id.forgetpassword_eye:
                if (password.getInputType() != InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD) {
                    password.setInputType(InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
                    eye.setImageResource(R.drawable.eye_show);
                } else {
                    password.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
                    eye.setImageResource(R.drawable.eye_hide);
                }
                break;
        }
    }
}
