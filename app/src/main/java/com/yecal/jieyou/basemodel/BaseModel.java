package com.yecal.jieyou.basemodel;

import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.NetworkUtils;
import com.google.gson.Gson;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.http.RequestParams;
import com.yecal.jieyou.system.AppContext;

import java.io.Serializable;

/**
 * @author 燕朝
 * @desc 基础模型
 */
public class BaseModel implements Serializable {
    private static final long serialVersionUID = 4298232973186841996L;

        public static String HOSTIP = "47.93.197.4:9080/firesafty";        //公网服务器地址
//    public static String HOSTIP = "192.168.0.120:9080/firesafty";        //本地服务器地址
    public static String API_HOST_PRE = "http://" + HOSTIP;// 主机地址


    public BaseModel() {
        // 网络检验
        if (AppContext.getInstance() != null
                && !NetworkUtils.isConnected()) {
            LogUtils.e("请检查网络!");
        }
    }


    // 通用接口
    public abstract interface BaseModelIB {
        public abstract void StartOp();// 开始执行

        public abstract void successful(Object o);// 成功返回

        public abstract void failed(ResultsModel resultsModel);// 失败 及标识
    }

    // 通用接口2
    public abstract interface BaseModelIB2 extends BaseModelIB {

        public abstract void onLoading(long total, long current,
                                       boolean isUploading);
    }

    // 对外接口
    public void BIBStart(BaseModelIB bib) {
        bib.StartOp();
    }

    public void BIBSucessful(BaseModelIB bib, Object o) {
        bib.successful(o);
    }

    public void BIBFailed(BaseModelIB bib, ResultsModel resultsModel) {
        bib.failed(resultsModel);
    }

    public void BIBOnLoading(BaseModelIB2 bib, long total, Long current,
                             Boolean isUploading) {
        bib.onLoading(total, current, isUploading);
    }

    // 根据act和op构建url
    public static String buildGetUrl(String actName, String opName) {
        return API_HOST_PRE + "/" + actName + "/" + opName;
    }

    // 根据act和op构建url
    public String buildGetUrl(String actName, String opName,
                              RequestParams params) {
        String sb = new String();
        for (org.apache.http.NameValuePair nvp : params.getQueryStringParams()) {
            sb = sb + "&" + nvp.getName() + "=" + nvp.getValue();
        }
        return API_HOST_PRE + "?act=" + actName + "&op=" + opName + sb;
    }

    // 通过json反序列化为实例
    public BaseModel fromJson(String jsonStr) {
        return (new Gson()).fromJson(jsonStr, this.getClass());
    }

    // 类 序列化为 json字符串
    public String toJson() {
        return (new Gson()).toJson(this);
    }

    // 生成一个网络访问
    public HttpUtils genHttpUtils() {
        HttpUtils utils = new HttpUtils(8000);// 8秒超时
        utils.configCurrentHttpCacheExpiry(0);// 0秒缓存
        return utils;
    }

    public HttpUtils genMaxHttpUtils() {
        HttpUtils utils = new HttpUtils(Integer.MAX_VALUE);// 8秒超时
        utils.configCurrentHttpCacheExpiry(0);// 0秒缓存
        return utils;
    }
}
