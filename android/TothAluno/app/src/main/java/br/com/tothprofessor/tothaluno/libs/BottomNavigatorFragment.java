package br.com.tothprofessor.tothaluno.libs;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;

import java.util.ArrayList;

import br.com.tothprofessor.tothaluno.R;

/**
 *
 */
public class BottomNavigatorFragment extends Fragment {

	private FrameLayout fragmentContainer;
	private RecyclerView recyclerView;
	private RecyclerView.LayoutManager layoutManager;

	/**
	 * Create a new instance of the fragment
	 */
	public static BottomNavigatorFragment newInstance(int index) {
		BottomNavigatorFragment fragment = new BottomNavigatorFragment();
		Bundle b = new Bundle();
		b.putInt("index", index);
		fragment.setArguments(b);
		return fragment;
	}

	@Nullable
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		if (getArguments().getInt("index", 0) == 0) {
			View view = inflater.inflate(R.layout.fragment_lista_atividades, container, false);
			initListAtividadesTab1(view);
			return view;
		} else if (getArguments().getInt("index", 0) == 1) {
			View view = inflater.inflate(R.layout.fragment_calendario, container, false);
			initFragmentCalendario(view);
			return view;
		} else if (getArguments().getInt("index", 0) == 2) {
//			View view = inflater.inflate(R.layout.fragment_lista_atividades, container, false);
//			initDemoList(view);
//			return view;
			return null;
		}else {
			View view = inflater.inflate(R.layout.fragment_opcoes, container, false);
			initFragmentOpcoes(view);
			return view;
		}
	}

	/**
	 * Init the fragment
	 */
	private void initListAtividadesTab1(View view) {

		fragmentContainer = (FrameLayout) view.findViewById(R.id.fragment_container);
		recyclerView = (RecyclerView) view.findViewById(R.id.fragment_demo_recycler_view);
		recyclerView.setHasFixedSize(true);
		layoutManager = new LinearLayoutManager(getActivity());
		recyclerView.setLayoutManager(layoutManager);

		ArrayList<String> itemsData = new ArrayList<>();
		itemsData.add("Scrow");
		for (int i = 0; i < 10; i++) {
			itemsData.add("Atividade " + i);
		}

		BottomNavigatorAdapter adapter = new BottomNavigatorAdapter(itemsData);
		recyclerView.setAdapter(adapter);
	}

	private void initFragmentCalendario(View view) {

		fragmentContainer = (FrameLayout) view.findViewById(R.id.fragment_container);
		recyclerView = (RecyclerView) view.findViewById(R.id.fragment_demo_recycler_view);
		recyclerView.setHasFixedSize(true);
		layoutManager = new LinearLayoutManager(getActivity());
		recyclerView.setLayoutManager(layoutManager);

		ArrayList<String> itemsData = new ArrayList<>();
		itemsData.add("Scrow");
		for (int i = 0; i < 3; i++) {
			itemsData.add("Atividade " + i);
		}

		BottomNavigatorAdapter adapter = new BottomNavigatorAdapter(itemsData);
		recyclerView.setAdapter(adapter);
	}

	private void initFragmentOpcoes(View view) {

		fragmentContainer = (FrameLayout) view.findViewById(R.id.fragment_container);
		recyclerView = (RecyclerView) view.findViewById(R.id.fragment_demo_recycler_view);
		recyclerView.setHasFixedSize(true);
		layoutManager = new LinearLayoutManager(getActivity());
		recyclerView.setLayoutManager(layoutManager);

		ArrayList<String> itemsData = new ArrayList<>();

		BottomNavigatorAdapter adapter = new BottomNavigatorAdapter(itemsData);
		recyclerView.setAdapter(adapter);
	}

	/**
	 * Refresh
	 */
	public void refresh() {
		if (getArguments().getInt("index", 0) >= 0 && recyclerView != null) {
			recyclerView.smoothScrollToPosition(0);
		}
	}

	/**
	 * Called when a fragment will be displayed
	 */
	public void willBeDisplayed() {
		// Do what you want here, for example animate the content
		if (fragmentContainer != null) {
			Animation fadeIn = AnimationUtils.loadAnimation(getActivity(), R.anim.fade_in);
			fragmentContainer.startAnimation(fadeIn);
		}
	}

	/**
	 * Called when a fragment will be hidden
	 */
	public void willBeHidden() {
		if (fragmentContainer != null) {
			Animation fadeOut = AnimationUtils.loadAnimation(getActivity(), R.anim.fade_out);
			fragmentContainer.startAnimation(fadeOut);
		}
	}
}
