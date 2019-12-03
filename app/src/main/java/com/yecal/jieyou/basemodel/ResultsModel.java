package com.yecal.jieyou.basemodel;

import com.google.gson.JsonSyntaxException;
import com.yecal.jieyou.basemodel.json.ThtGosn;

/**
 * 
 * @author blueam
 * @desc 返回的数据结构
 */
public class ResultsModel {

	public ResultsModel() {
		code = "";
	}

	public ResultsModel(String sState, String errorMsg) {
		this.code = sState;
		this.msg = errorMsg;
	}

	private String code;// 状态指示符
	private String jsonDatas;// 数据Json格式主体
	private String stringDatas;// 数据string格式主体
	private String msg;// 错误描述

	public String getStringDatas() {
		return stringDatas;
	}

	public void setStringDatas(String stringDatas) {
		this.stringDatas = stringDatas;
	}

	public String getState() {
		return code;
	}

	public void setState(String state) {
		this.code = state;
	}

	public String getJsonDatas() {
		return jsonDatas;
	}

	public void setJsonDatas(String jsonDatas) {
		this.jsonDatas = jsonDatas;
	}

	public String getErrorMsg() {
		return msg;
	}

	public void setErrorMsg(String errorMsg) {
		this.msg = errorMsg;
	}

	/**
	 * @desc 获取实例
	 * @param requestStr
	 * 返回值：
	 */
	public static ResultsModel getInstanseFromStr(String requestStr) {
		ResultsModel rm = new ResultsModel();

		ResultsModelO resultsModelo = null;
		try {
			resultsModelo = (ThtGosn.genGson()).fromJson(requestStr, ResultsModelO.class);
		} catch (JsonSyntaxException e) {
			rm.msg = "网络错误";
			rm.code = "";
			return rm;
		}
		String arg1 = "";
		if (resultsModelo != null) {
			arg1 = resultsModelo.code;

			if (arg1.equals("000000"))
				rm.setJsonDatas((ThtGosn.genGson()).toJson(resultsModelo.data));
			else
				rm.setErrorMsg((String)resultsModelo.msg);
			rm.setState(arg1);// 设置状态指示
			if (resultsModelo.msg != null)
				rm.setStringDatas(resultsModelo.msg.toString());// 设置string主体
		}

		return rm;
	}

	/**
	 *
	 * @author Administrator 返回 实体类
	 *
	 */
	public class ResultsModelO {

		public ResultsModelO() {
			// TODO Auto-generated constructor stub
		}

		public String code;// 状态指示符
		public Object msg;// 数据主体
		public Object data;// 数据主体

	}

	// string 转 ascii
	public static String stringToAscii(String value) {
		StringBuffer sbu = new StringBuffer();
		char[] chars = value.toCharArray();
		for (int i = 0; i < chars.length; i++) {
			if (i != chars.length - 1) {
				sbu.append((int) chars[i]).append(",");
			} else {
				sbu.append((int) chars[i]);
			}
		}
		return sbu.toString();
	}

}
