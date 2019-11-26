package com.yecal.jieyou.model.adapter;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


public class ThtGosn {

	public ThtGosn() {
		// TODO Auto-generated constructor stub
	}

	public static Gson genGson() {
		GsonBuilder gsonBuilder = new GsonBuilder().registerTypeAdapter(
				Double.class, new BadDoubleDeserializer());
		gsonBuilder.registerTypeAdapter(double.class,
				new BadDoubleDeserializer());
		gsonBuilder.registerTypeAdapter(Integer.class,
				new BadIntegerDeserializer());
		gsonBuilder.registerTypeAdapter(int.class,
				new BadIntegerDeserializer());
		return gsonBuilder.create();

	}
}
