package com.aurelhubert.ahbottomnavigation.demo;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.aurelhubert.ahbottomnavigation.AHBottomNavigation;
import com.aurelhubert.ahbottomnavigation.AHBottomNavigationAdapter;
import com.aurelhubert.ahbottomnavigation.AHBottomNavigationItem;
import com.aurelhubert.ahbottomnavigation.AHBottomNavigationViewPager;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

	private BottomNavigatorFragment currentFragment;
	private BottomNavigatorPagerAdapter adapter;
	private AHBottomNavigationAdapter navigationAdapter;
	private ArrayList<AHBottomNavigationItem> bottomNavigationItems = new ArrayList<>();
	private boolean useMenuResource = true;
	private int[] tabColors;
	private Handler handler = new Handler();

	// UI
	private AHBottomNavigationViewPager viewPager;
	private AHBottomNavigation bottomNavigation;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		boolean enabledTranslucentNavigation = getSharedPreferences("shared", Context.MODE_PRIVATE)
				.getBoolean("translucentNavigation", false);
		setTheme(enabledTranslucentNavigation ? R.style.AppTheme_TranslucentNavigation : R.style.AppTheme);
		setContentView(R.layout.activity_main);
		initUI();

	}

	public void abrirAtividade(View view){
		Intent intent = new Intent(this, ResumoAtividadeActivity.class);
		startActivity(intent);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		handler.removeCallbacksAndMessages(null);
	}

	/**
	 * Init UI
	 */
	private void initUI() {

		bottomNavigation = (AHBottomNavigation) findViewById(R.id.bottom_navigation);
		viewPager = (AHBottomNavigationViewPager) findViewById(R.id.view_pager);

		if (useMenuResource) {
			tabColors = getApplicationContext().getResources().getIntArray(R.array.tab_colors);
			navigationAdapter = new AHBottomNavigationAdapter(this, R.menu.bottom_navigation_menu_4);
			navigationAdapter.setupWithBottomNavigation(bottomNavigation, tabColors);
		} else {
			AHBottomNavigationItem item1 = new AHBottomNavigationItem(R.string.tab_1, R.drawable.ic_apps_black_24dp, R.color.color_tab_1);
			AHBottomNavigationItem item2 = new AHBottomNavigationItem(R.string.tab_2, R.drawable.ic_maps_local_bar, R.color.color_tab_2);
			AHBottomNavigationItem item3 = new AHBottomNavigationItem(R.string.tab_3, R.drawable.ic_maps_local_restaurant, R.color.color_tab_3);
			AHBottomNavigationItem item4 = new AHBottomNavigationItem(R.string.tab_4, R.drawable.ic_maps_local_restaurant, R.color.color_tab_4);

			bottomNavigationItems.add(item1);
			bottomNavigationItems.add(item2);
			bottomNavigationItems.add(item3);
			bottomNavigationItems.add(item4);

			bottomNavigation.addItems(bottomNavigationItems);
		}

		bottomNavigation.setTranslucentNavigationEnabled(true);
		bottomNavigation.setAccentColor(Color.parseColor("#F63D2B"));
		bottomNavigation.setInactiveColor(Color.parseColor("#747474"));

		bottomNavigation.setOnTabSelectedListener(new AHBottomNavigation.OnTabSelectedListener() {
			@Override
			public boolean onTabSelected(int position, boolean wasSelected) {

				if (currentFragment == null) {
					currentFragment = adapter.getCurrentFragment();
				}

				if (wasSelected) {
					currentFragment.refresh();
					return true;
				}

				if (currentFragment != null) {
					currentFragment.willBeHidden();
				}

				viewPager.setCurrentItem(position, false);
				currentFragment = adapter.getCurrentFragment();
				currentFragment.willBeDisplayed();

				if (position == 1) {
					bottomNavigation.setNotification("", 1);

				} else {
//					bottomNavigation.setNotification("5", 2);
				}

				return true;
			}
		});


		viewPager.setOffscreenPageLimit(4);
		adapter = new BottomNavigatorPagerAdapter(getSupportFragmentManager());
		viewPager.setAdapter(adapter);

		currentFragment = adapter.getCurrentFragment();

		handler.postDelayed(new Runnable() {
			@Override
			public void run() {
				// Setting custom colors for notification
//				AHNotification notification = new AHNotification.Builder()
//						.setText(":)")
//						.setBackgroundColor(ContextCompat.getColor(MainActivity.this, R.color.color_notification_back))
//						.setTextColor(ContextCompat.getColor(MainActivity.this, R.color.color_notification_text))
//						.build();
//				bottomNavigation.setNotification(notification, 1);
				bottomNavigation.setNotification("3", 1);
//				Snackbar.make(bottomNavigation, "Snackbar with bottom navigation",
//						Snackbar.LENGTH_SHORT).show();

			}
		}, 3000);
	}


	/**
	 * Reload activity
	 */
	public void reload() {
		startActivity(new Intent(this, MainActivity.class));
		finish();
	}

}
