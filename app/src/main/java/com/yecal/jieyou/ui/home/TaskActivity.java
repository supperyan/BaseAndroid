package com.yecal.jieyou.ui.home;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import com.yarolegovich.discretescrollview.DSVOrientation;
import com.yarolegovich.discretescrollview.DiscreteScrollView;
import com.yarolegovich.discretescrollview.InfiniteScrollAdapter;
import com.yarolegovich.discretescrollview.transform.ScaleTransformer;
import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.activity.BaseActivity;
import com.yecal.jieyou.ui.home.adapter.ShopAdapter;
import com.yecal.jieyou.ui.home.model.Item;
import com.yecal.jieyou.ui.home.model.Shop;

import java.util.List;

import butterknife.BindView;
import butterknife.OnClick;

public class TaskActivity extends BaseActivity {


    @BindView(R.id.home)
    ImageView home;
    @BindView(R.id.item_name)
    TextView currentItemName;
    @BindView(R.id.item_price)
    TextView currentItemPrice;
    @BindView(R.id.item_picker)
    DiscreteScrollView itemPicker;
    @BindView(R.id.item_btn_comment)
    ImageView itemBtnComment;
    @BindView(R.id.item_btn_buy)
    FloatingActionButton itemBtnBuy;
    @BindView(R.id.item_btn_rate)
    ImageView rateItemButton;
    @BindView(R.id.btn_smooth_scroll)
    Button btnSmoothScroll;
    @BindView(R.id.btn_transition_time)
    Button btnTransitionTime;

    private List<Item> data;
    private Shop shop;
    private InfiniteScrollAdapter infiniteAdapter;

    @Override
    protected View onCreateContentView() {
        return inflateContentView(R.layout.activity_task);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView();
    }

    private void initView() {
        shop = Shop.get();
        data = shop.getData();
        itemPicker.setOrientation(DSVOrientation.HORIZONTAL);
        infiniteAdapter = InfiniteScrollAdapter.wrap(new ShopAdapter(data));
        itemPicker.setAdapter(infiniteAdapter);
        itemPicker.addOnItemChangedListener(new DiscreteScrollView.OnItemChangedListener<RecyclerView.ViewHolder>() {
            @Override
            public void onCurrentItemChanged(@Nullable RecyclerView.ViewHolder viewHolder, int adapterPosition) {
                int positionInDataSet = infiniteAdapter.getRealPosition(adapterPosition);
                onItemChanged(data.get(positionInDataSet));
            }
        });
        itemPicker.setItemTransitionTimeMillis(150);
        itemPicker.setItemTransformer(new ScaleTransformer.Builder()
                .setMinScale(0.8f)
                .build());

        onItemChanged(data.get(0));
    }

    private void onItemChanged(Item item) {
        currentItemName.setText(item.getName());
        currentItemPrice.setText(item.getPrice());
        changeRateButtonState(item);
    }

    private void changeRateButtonState(Item item) {
        if (shop.isRated(item.getId())) {
            rateItemButton.setImageResource(R.mipmap.star_black);
            rateItemButton.setColorFilter(ContextCompat.getColor(this, R.color.shopRatedStar));
        } else {
            rateItemButton.setImageResource(R.mipmap.star_border_black);
            rateItemButton.setColorFilter(ContextCompat.getColor(this, R.color.shopSecondary));
        }
    }

    private void showUnsupportedSnackBar() {
        Snackbar.make(itemPicker, "Unsupported operation", Snackbar.LENGTH_SHORT).show();
    }

    @OnClick({R.id.home, R.id.item_btn_comment, R.id.item_btn_buy, R.id.item_btn_rate, R.id.btn_smooth_scroll, R.id.btn_transition_time})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.home:
                finish();
                break;
            case R.id.item_btn_comment:
                break;
            case R.id.item_btn_buy:
                break;
            case R.id.item_btn_rate:
                int realPosition = infiniteAdapter.getRealPosition(itemPicker.getCurrentItem());
                Item current = data.get(realPosition);
                shop.setRated(current.getId(), !shop.isRated(current.getId()));
                changeRateButtonState(current);
                break;
            case R.id.btn_smooth_scroll:
                break;
            case R.id.btn_transition_time:
//                DiscreteScrollViewOptions.configureTransitionTime(itemPicker);
                break;
        }
    }

    public static void start(Context context) {
        Intent starter = new Intent(context, TaskActivity.class);
        context.startActivity(starter);
    }
}
