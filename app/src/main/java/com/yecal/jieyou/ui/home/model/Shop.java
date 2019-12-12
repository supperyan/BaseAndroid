package com.yecal.jieyou.ui.home.model;

import android.content.Context;
import android.content.SharedPreferences;

import com.yecal.jieyou.R;
import com.yecal.jieyou.system.AppContext;

import java.util.Arrays;
import java.util.List;

/**
 * Created by yarolegovich on 07.03.2017.
 */

public class Shop {

    private static final String STORAGE = "shop";

    public static Shop get() {
        return new Shop();
    }

    private SharedPreferences storage;

    private Shop() {
        storage = AppContext.getInstance().getSharedPreferences(STORAGE, Context.MODE_PRIVATE);
    }

    public List<Item> getData() {
        return Arrays.asList(
                new Item(1, "蜡烛", "¥ 10.00", R.mipmap.shop1),
                new Item(2, "服务", "¥ 50.00", R.mipmap.shop2),
                new Item(3, "大厨", "¥ 265.00", R.mipmap.shop3),
                new Item(4, "聚餐", "¥ 18.00", R.mipmap.shop4),
                new Item(5, "水果拼盘", "¥ 36.00", R.mipmap.shop5),
                new Item(6, "面艺大师", "¥ 145.00", R.mipmap.shop6));
    }

    public boolean isRated(int itemId) {
        return storage.getBoolean(String.valueOf(itemId), false);
    }

    public void setRated(int itemId, boolean isRated) {
        storage.edit().putBoolean(String.valueOf(itemId), isRated).apply();
    }
}
