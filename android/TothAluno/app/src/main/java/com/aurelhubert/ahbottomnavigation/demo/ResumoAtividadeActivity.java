package com.aurelhubert.ahbottomnavigation.demo;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentContainer;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import java.util.ArrayList;

/**
 * Created by kennedy on 18/02/17.
 */

public class ResumoAtividadeActivity extends AppCompatActivity {

    private FragmentContainer fragmentContainer;
    private RecyclerView recyclerView;
    private RecyclerView.LayoutManager layoutManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_resumo_atividade);
    }


    private void iniciaPaginaAtividade(View view) {

        fragmentContainer = (FragmentContainer) view.findViewById(R.id.tipoAtividade);
        recyclerView = (RecyclerView) view.findViewById(R.id.quadro_tipo_atividade);
        recyclerView.setHasFixedSize(true);
        layoutManager = new LinearLayoutManager(getActivity());
        recyclerView.setLayoutManager(layoutManager);

//        ArrayList<String> itemsData = new ArrayList<>();
//        for (int i = 0; i < 10; i++) {
//            itemsData.add("Fragment " + getArguments().getInt("index", -1) + " / Item " + i);
//        }
//
//        BottomNavigatorAdapter adapter = new BottomNavigatorAdapter(itemsData);
//        recyclerView.setAdapter(adapter);
    }
}
