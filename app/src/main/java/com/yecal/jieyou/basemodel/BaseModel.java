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

    public static String HOSTIP = "47.93.197.4:9080/firesafty";        //公网服务器地址
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

    // 根据act和op构建url
    public static String buildGetUrl(String actName, String opName) {
        return API_HOST_PRE + "/" + actName + "/" + opName;
    }

}
