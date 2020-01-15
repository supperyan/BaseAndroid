package com.yecal.jieyou.basemodel;

import android.text.TextUtils;

import com.blankj.utilcode.util.LogUtils;
import com.google.gson.Gson;
import com.zhy.http.okhttp.OkHttpUtils;
import com.zhy.http.okhttp.callback.StringCallback;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Call;
import okhttp3.MediaType;

/**
 * @author Theaty
 * @desc 会员模型
 */
public class MemberModel extends BaseModel {

    public int id;
    public String mobile;

    /**
     * 检验自身是否一个合法的类型
     *
     * @return
     */
    public String isLegal() {
//		  if (member_id <= 0) {
//			  return " member_id非法";
//		  }
//        if (key.length() < 1) {
//            return " key非法";
//        }
        if (TextUtils.isEmpty(mobile)) {
            return "member_name非法";
        }
        return "access";
    }

    /**
     * post json请求 * * @param obj 实体类对象 * @param stringCallback 对数据的处理,在ui线程执行
     */
    public static void doPostByJson(String url, String obj, StringCallback stringCallback) {
        if (obj == null || stringCallback == null) {
            return;
        }
        OkHttpUtils.postString().url(url).content(obj)
                .mediaType(MediaType.parse("application/json; charset=utf-8"))
                .build()
                .execute(stringCallback);
    }

    /**
     * 登录
     *
     * @param bib
     */
    public void login(String mobile, String password, String hostId, final BaseModel.BaseModelIB bib) {
        String url = buildGetUrl("user", "login");// 构建API地址
        if (bib == null)
            LogUtils.e("TTError:" + "user/login  参数bib为null");// 回调不能为空

        BIBStart(bib);// 开始bib
        Map map = new HashMap();
        map.put("mobile", mobile);
        map.put("password", password);
        map.put("hostId", hostId);

        String jsonData = new Gson().toJson(map);

        doPostByJson(url, jsonData, new StringCallback() {
            @Override
            public void onError(Call call, Exception e, int id) {
                LogUtils.e("服务器请求失败" + e.getMessage());
                BIBFailed(bib, new ResultsModel("111111", "网络超时"));// 访问接口失败, 可能网络原因, 或者服务器宕机等造成
            }

            @Override
            public void onResponse(String response, int id) {
                LogUtils.e("服务器请求成功：" + response);
                ResultsModel rm = ResultsModel.getInstanseFromStr(response);
                if (rm.getState().equals("000000")) {// 成功
                    MemberModel gm = (new Gson()).fromJson(rm.getJsonDatas(), MemberModel.class);
                    BIBSucessful(bib, gm);// 接口执行
                } else {// 失败
                    BIBFailed(bib, rm);// 失败标志位
                }

            }
        });
    }
}

