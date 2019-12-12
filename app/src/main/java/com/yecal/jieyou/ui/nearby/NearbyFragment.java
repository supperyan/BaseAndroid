package com.yecal.jieyou.ui.nearby;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;

import com.baidu.location.BDAbstractLocationListener;
import com.baidu.location.BDLocation;
import com.baidu.location.LocationClient;
import com.baidu.location.LocationClientOption;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.BitmapDescriptor;
import com.baidu.mapapi.map.BitmapDescriptorFactory;
import com.baidu.mapapi.map.MapStatus;
import com.baidu.mapapi.map.MapStatusUpdateFactory;
import com.baidu.mapapi.map.MapView;
import com.baidu.mapapi.map.MarkerOptions;
import com.baidu.mapapi.map.MyLocationData;
import com.baidu.mapapi.map.OverlayOptions;
import com.baidu.mapapi.model.LatLng;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.yecal.jieyou.R;
import com.yecal.jieyou.baseUi.fragment.BaseFragment;
import com.yecal.jieyou.ui.nearby.adapter.LocationAdapter;
import com.yecal.jieyou.ui.nearby.model.LocationModel;

import java.util.ArrayList;

import butterknife.BindView;
import butterknife.OnClick;

/**
 * Created by yecal on 2018/5/30.
 */

public class NearbyFragment extends BaseFragment {

    @BindView(R.id.location_map)
    MapView mMapView;
    @BindView(R.id.location_icon)
    ImageView icon;
    @BindView(R.id.loation_recyclerview)
    RecyclerView recyclerView;

    private BaiduMap mBaiduMap;
    private LocationClient mLocationClient;

    private LocationAdapter adapter;
    private ArrayList<LocationModel> models = new ArrayList<>();

    public static NearbyFragment getInstance() {
        NearbyFragment fragment = new NearbyFragment();
        return fragment;
    }

    protected View onCreateContentView() {
        return inflateContentView(R.layout.fragment_location);
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initMap();
        initView();
        initData();
        initMark();
    }

    private void initView() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(LinearLayoutManager.HORIZONTAL);
        recyclerView.setLayoutManager(linearLayoutManager);
        adapter = new LocationAdapter();
        adapter.openLoadAnimation(BaseQuickAdapter.ALPHAIN);
        recyclerView.setAdapter(adapter);
        adapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
                LocationModel locationModel = (LocationModel) adapter.getData().get(position);
                UserInfoActivity.start(getActivity(),locationModel.id);
            }
        });
    }

    private void initData() {
        for (int i = 0; i < 5; i++) {
            models.add(new LocationModel());
        }
        adapter.setNewData(models);
    }

    private void initMark() {
        //TODO 每次保存用户经纬度，作为显示到地图上，实时更新，一个人即为一个标记、实现点聚合功能、实现显示附近一公里范围内的标记（如果不够二十人，则显示最近的二十个人的标记）

    }

    private void initMap() {
        mBaiduMap = mMapView.getMap();
        //显示卫星图层
        mBaiduMap.setMapType(BaiduMap.MAP_TYPE_SATELLITE);
//        //显示普通图层
//        mBaiduMap.setMapType(BaiduMap.MAP_TYPE_NORMAL);
        mBaiduMap.setMyLocationEnabled(true);
        //定位初始化
        mLocationClient = new LocationClient(getActivity());
        MapStatus.Builder builder = new MapStatus.Builder();
        builder.zoom(12.0f);
        mBaiduMap.setMapStatus(MapStatusUpdateFactory.newMapStatus(builder.build()));

        //通过LocationClientOption设置LocationClient相关参数
        LocationClientOption option = new LocationClientOption();
        option.setOpenGps(true); // 打开gps
        option.setScanSpan(0);

        //设置locationClientOption
        mLocationClient.setLocOption(option);

        //注册LocationListener监听器
        MyLocationListener myLocationListener = new MyLocationListener();
        mLocationClient.registerLocationListener(myLocationListener);
        //开启地图定位图层
        mLocationClient.start();
    }

    public class MyLocationListener extends BDAbstractLocationListener {
        @Override
        public void onReceiveLocation(BDLocation location) {
            //mapView 销毁后不在处理新接收的位置
            if (location == null || mMapView == null) {
                return;
            }
            MyLocationData locData = new MyLocationData.Builder()
                    .accuracy(location.getRadius())
                    // 此处设置开发者获取到的方向信息，顺时针0-360
                    .direction(location.getDirection()).latitude(location.getLatitude())
                    .longitude(location.getLongitude()).build();
            mBaiduMap.setMyLocationData(locData);
            LatLng latLng = new LatLng(location.getLatitude(),
                    location.getLongitude());
            //构建自己的Marker图标
            BitmapDescriptor bitmap = BitmapDescriptorFactory
                    .fromResource(R.mipmap.map_mark);
            //构建MarkerOption，用于在地图上添加Marker
            OverlayOptions option = new MarkerOptions()
                    .position(latLng)
                    .icon(bitmap);
            //在地图上添加Marker，并显示
            mBaiduMap.addOverlay(option);

            MapStatus.Builder builder = new MapStatus.Builder();
            builder.target(latLng);
            mBaiduMap.setMapStatus(MapStatusUpdateFactory.newMapStatus(builder.build()));
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        //在activity执行onResume时必须调用mMapView. onResume ()
        mMapView.onResume();
    }

    @Override
    public void onPause() {
        super.onPause();
        //在activity执行onPause时必须调用mMapView. onPause ()
        mMapView.onPause();
    }

    @Override
    public void onDestroyView() {
        mLocationClient.stop();
        mBaiduMap.setMyLocationEnabled(false);
        mMapView.onDestroy();
        mMapView = null;
        super.onDestroyView();
    }

    @OnClick({R.id.location_icon})
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.location_icon:
                mLocationClient.start();
                break;
        }
    }
}
