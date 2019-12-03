package com.yecal.jieyou.ui.location.adapter;

import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.yecal.jieyou.R;
import com.yecal.jieyou.ui.location.model.LocationModel;

public class LocationAdapter extends BaseQuickAdapter<LocationModel, BaseViewHolder> {

    public LocationAdapter() {
        super(R.layout.item_location);
    }

    @Override
    protected void convert(BaseViewHolder helper, LocationModel item) {
//        helper.setText(R.id.text, item.name);
//        Glide.with(mContext).load(item.avatar).crossFade().into((ImageView) helper.getView(R.id.item_loaction_avatar));
    }
}
