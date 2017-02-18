package com.aurelhubert.ahbottomnavigation.demo.view;

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;

import com.aurelhubert.ahbottomnavigation.demo.R;

import me.everything.android.ui.overscroll.OverScrollDecoratorHelper;

/**
 * @author amitd
 */
public class ScrollViewDemoFragment extends Fragment {

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View fragmentView = inflater.inflate(R.layout.activity_main, null, false);
        initHorizontalScrollView((HorizontalScrollView) fragmentView.findViewById(R.id.horizontal_scroll_view));
        //initVerticalScrollView((ScrollView) fragmentView.findViewById(R.id.vertical_scroll_view));
        return fragmentView;
    }

    private void initHorizontalScrollView(HorizontalScrollView scrollView) {
        OverScrollDecoratorHelper.setUpOverScroll(scrollView);
    }

//    private void initVerticalScrollView(ScrollView scrollView) {
//        OverScrollDecoratorHelper.setUpOverScroll(scrollView);
//    }

}
