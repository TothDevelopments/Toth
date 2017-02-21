package com.aurelhubert.ahbottomnavigation.demo;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;

import java.util.ArrayList;

/**
 *
 */
public class BottomNavigatorPagerAdapter extends FragmentPagerAdapter {

	private ArrayList<BottomNavigatorFragment> fragments = new ArrayList<>();
	private BottomNavigatorFragment currentFragment;

	public BottomNavigatorPagerAdapter(FragmentManager fm) {
		super(fm);

		fragments.clear();
		fragments.add(BottomNavigatorFragment.newInstance(0));
		fragments.add(BottomNavigatorFragment.newInstance(1));
		fragments.add(BottomNavigatorFragment.newInstance(2));
		fragments.add(BottomNavigatorFragment.newInstance(3));
		fragments.add(BottomNavigatorFragment.newInstance(4));
	}

	@Override
	public BottomNavigatorFragment getItem(int position) {
		return fragments.get(position);
	}

	@Override
	public int getCount() {
		return fragments.size();
	}

	@Override
	public void setPrimaryItem(ViewGroup container, int position, Object object) {
		if (getCurrentFragment() != object) {
			currentFragment = ((BottomNavigatorFragment) object);
		}
		super.setPrimaryItem(container, position, object);
	}

	/**
	 * Get the current fragment
	 */
	public BottomNavigatorFragment getCurrentFragment() {
		return currentFragment;
	}
}