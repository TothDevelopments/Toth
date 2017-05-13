package com.example.kennedy.tothaluno;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.example.kennedy.tothaluno.adapters.ListaAtividadesAdapter;
import com.example.kennedy.tothaluno.adapters.ListaGruposHorizontalAdapter;
import com.example.kennedy.tothaluno.classes.Atividade;
import com.example.kennedy.tothaluno.classes.Grupo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class MainActivity extends AppCompatActivity {

    private LinearLayout listaTopoPagina;
    private ListView listaAtividades;
    ArrayList<Grupo> grupos;

    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            switch (item.getItemId()) {
                case R.id.navigation_1:
                    carregaListaAtividades();
                    return true;
                case R.id.navigation_2:
                    carregaListaAgenda();
                    return true;
                case R.id.navigation_3:
                    carregaListaConversas();
                    return true;
                case R.id.navigation_4:
                    carregaListaOpcoes();
                    return true;
            }
            return false;
        }

    };

    @Override
    public View findViewById(@IdRes int id) {
        return super.findViewById(id);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);

        listaTopoPagina = (LinearLayout) findViewById(R.id.ListTop);

        listaAtividades = (ListView) findViewById(R.id.ListViewMain);
        listaAtividades.setDivider(null);

        // Iniciar a Activity com a lista da subtela ATIVIDADES
        carregaListaAtividades();
    }

    @Override
    public void onResume(){
//        carregaListaAtividades();
        super.onResume();
    }

    // Carrega a lista da subtela ATIVIDADES
    public void carregaListaAtividades(){
        ArrayList<Grupo> grupos = new ArrayList<Grupo>();
        for (int i = 0 ; i < 10; i++){
            grupos.add(new Grupo(i, "Apelido "+i, "Cidade "+i, "Escola "+i, new Date()));
        }
        ListaGruposHorizontalAdapter adapterListaGrupos = new ListaGruposHorizontalAdapter(this, grupos);
        this.listaTopoPagina.setAdapter(adapterListaGrupos);


        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        for (int i = 0 ; i < 10; i++){
            atividades.add(new Atividade(i, 1, "Título "+i, "Subtitulo "+i, new Date()));
        }
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela AGENDA
    public void carregaListaAgenda(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        for (int i = 0 ; i < 10; i++){
            atividades.add(new Atividade(i, 2, "Título "+i, "Subtitulo "+i, new Date()));
        }
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela CONVERSAS
    public void carregaListaConversas(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        for (int i = 0 ; i < 10; i++){
            atividades.add(new Atividade(i, 3, "Título "+i, "Subtitulo "+i, new Date()));
        }
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela OPCOES
    public void carregaListaOpcoes(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        for (int i = 0 ; i < 10; i++){
            atividades.add(new Atividade(i, 1, "Título "+i, "Subtitulo "+i, new Date()));
        }
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

}
