package com.yecal.qianding.model.adapter;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;

import java.lang.reflect.Type;

public class BadDoubleDeserializer implements JsonDeserializer<Double> {

	@Override
	public Double deserialize(JsonElement element, Type type,
                              JsonDeserializationContext context) throws JsonParseException {
		try {
			// return element.getAsNumber();
			if (element.getAsString().equals("") || element.getAsString().equals("null"))
				return 0d;
			return element.getAsDouble();
		} catch (NumberFormatException e) {
			return 0d;
		}
	}

}