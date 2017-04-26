package com.example.kennedy.tothaluno;

import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;

import com.example.kennedy.tothaluno.adapters.ListaAtividadesAdapter;
import com.example.kennedy.tothaluno.classes.Atividade;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class MainActivity extends AppCompatActivity {

    ListView listaAtividades;

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
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        atividades.add(new Atividade(1, 1, "Título 1", "Subtitulo 1", new Date()));
        atividades.add(new Atividade(2, 2, "Título 2", "Subtitulo 2", new Date()));
        atividades.add(new Atividade(3, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(4, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(5, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(6, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(7, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(8, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(9, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(10, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(11, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(12, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(13, 4, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(14, 2, "Título 2", "Subtitulo 3", new Date()));
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela AGENDA
    public void carregaListaAgenda(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        atividades.add(new Atividade(1, 2, "Título 1", "Subtitulo 1", new Date()));
        atividades.add(new Atividade(2, 2, "Título 2", "Subtitulo 2", new Date()));
        atividades.add(new Atividade(3, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(4, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(5, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(6, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(7, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(8, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(9, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(10, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(11, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(12, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(13, 2, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(14, 2, "Título 2", "Subtitulo 3", new Date()));
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela CONVERSAS
    public void carregaListaConversas(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        atividades.add(new Atividade(1, 3, "Título 1", "Subtitulo 1", new Date()));
        atividades.add(new Atividade(2, 3, "Título 2", "Subtitulo 2", new Date()));
        atividades.add(new Atividade(3, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(4, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(5, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(6, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(7, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(8, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(9, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(10, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(11, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(12, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(13, 3, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(14, 3, "Título 2", "Subtitulo 3", new Date()));
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

    // Carrega a lista da subtela OPCOES
    public void carregaListaOpcoes(){
        ArrayList<Atividade> atividades = new ArrayList<Atividade>();
        atividades.add(new Atividade(1, 1, "Título 1", "Subtitulo 1", new Date()));
        atividades.add(new Atividade(2, 1, "Título 2", "Subtitulo 2", new Date()));
        atividades.add(new Atividade(3, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(4, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(5, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(6, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(7, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(8, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(9, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(10, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(11, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(12, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(13, 1, "Título 3", "Subtitulo 3", new Date()));
        atividades.add(new Atividade(14, 1, "Título 2", "Subtitulo 3", new Date()));
        ListaAtividadesAdapter adapter = new ListaAtividadesAdapter(this, atividades);
        this.listaAtividades.setAdapter(adapter);
    }

}
