package com.yecal.jieyou.base.activity;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yecal.jieyou.base.fragment.BaseFragment;
import java.util.ArrayList;
import java.util.List;


public abstract class BaseFragmentActivity extends BaseActivity {

    protected FragmentManager _fragmentManager;
    private ChangeListener changeListener;


    protected int _index = 0;

    protected Bundle bundle;
    protected ArrayList<Class<? extends BaseFragment>> _fragmentClasses = new ArrayList<>();
    protected List<Fragment> _fragments = new ArrayList<>();

    protected abstract ArrayList<Class<? extends BaseFragment>> fragmentClasses();

    protected abstract int containerViewId();

    public void setChangeListener(ChangeListener changeListener) {
        this.changeListener = changeListener;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        _fragmentManager = getSupportFragmentManager();
        _fragmentClasses = this.fragmentClasses();
        for (int i = 0; i < _fragmentClasses.size(); i++) {
            if (_fragmentManager.findFragmentByTag(i + "") != null) {
                _fragments.add(_fragmentManager.findFragmentByTag(i + ""));
            } else {
                _fragments.add(null);
            }
        }
        selectPage(this.getSelectedPage());
    }

    public void selectPage(int index) {
        this.setFragmentSelection(index);
    }

    public int getSelectedPage() {
        return _index;
    }

    public void setSelectedPage(int index) {
        _index = index;
    }

    public void setFragmentSelection(int index) {
        if (changeListener != null) {
            changeListener.changeIndex(index);
        }
        FragmentTransaction transaction = _fragmentManager.beginTransaction();
        setSelectedPage(index);
        for (int i = 0; i < _fragments.size(); i++) {
            if (i == index) {
                continue;
            }

            Fragment fragment = _fragments.get(i);
            if (fragment != null) {
                transaction.hide(fragment);
            }
        }
        Fragment fragment = _fragments.get(index);

        if (fragment == null) {
            Class<? extends BaseFragment> clazz = _fragmentClasses.get(index);
            try {
                fragment = clazz.newInstance();
                Bundle bundle =new Bundle();
                bundle.putInt("position",index);
                fragment.setArguments(bundle);
                transaction.add(containerViewId(), fragment, "" + index);
                _fragments.set(index, fragment);
            } catch (Exception e) {
            }
        } else {
            fragment = _fragmentManager.findFragmentByTag("" + _index);

            transaction.show(fragment);

        }
        transaction.commitAllowingStateLoss();

    }

    public void setBundle(Bundle bundle) {
        this.bundle = bundle;
    }

    public interface ChangeListener {
        void changeIndex(int index);
    }
}
