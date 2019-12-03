package com.yecal.jieyou.ui.login;


import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.blankj.utilcode.util.RegexUtils;
import com.blankj.utilcode.util.StringUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.activity.BaseActivity;
import com.yecal.jieyou.ui.MainActivity;
import com.yecal.jieyou.utils.StringUtil;

import butterknife.BindView;
import butterknife.OnClick;

public class LoginActivity extends BaseActivity {

    @BindView(R.id.login_account)
    EditText account;
    @BindView(R.id.login_password)
    EditText password;
    @BindView(R.id.login_forgetpassword)
    TextView forgetPassword;
    @BindView(R.id.login_login)
    Button login;
    @BindView(R.id.login_regist)
    TextView regist;
    @BindView(R.id.login_account_line)
    View accountLl;
    @BindView(R.id.login_password_line)
    View passwordLl;
    @BindView(R.id.login_account_image)
    ImageView accountImage;
    @BindView(R.id.login_password_image)
    ImageView passwordImage;
    @BindView(R.id.login_regist_now)
    TextView registNow;

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_login);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("登录");
    }

    @OnClick({R.id.login_forgetpassword, R.id.login_login, R.id.login_regist, R.id.login_regist_now})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.login_forgetpassword:
                ForgetPasswordActivity.start(LoginActivity.this);
                break;
            case R.id.login_login:
                if (!RegexUtils.isMobileExact(StringUtil.getEditString(account))) {
                    ToastUtils.showShort("手机号输入错误");
                    return;
                }
                if (StringUtils.isEmpty(StringUtil.getEditString(password))) {
                    ToastUtils.showShort("密码输入错误！");
                    return;
                }
                finish();
                MainActivity.start(LoginActivity.this);
//                toLogin();
                break;
            case R.id.login_regist:
            case R.id.login_regist_now:
                RegistActivity.start(LoginActivity.this);
                break;
        }
    }

    private void toLogin() {
//        String RegistrationID = JPushInterface.getRegistrationID(LoginActivity.this);
//        new MemberModel().login(StringUtil.getEditString(account), StringUtil.getEditString(password), RegistrationID, new BaseModel.BaseModelIB() {
//            @Override
//            public void StartOp() {
//                showLoading();
//            }
//            @Override
//            public void successful(Object o) {
//                hideLoading();
//                MemberModel model = (MemberModel) o;
//                DatasStore.setCurMember(model);
//                finish();
//                MainActivity.start(LoginActivity.this);
//            }
//
//            @Override
//            public void failed(ResultsModel resultsModel) {
//                hideLoading();
//                ToastUtils.showShort(resultsModel.getErrorMsg());
//            }
//        });
    }

    public static void start(Context context) {
        Intent starter = new Intent(context, LoginActivity.class);
        context.startActivity(starter);
    }
}
