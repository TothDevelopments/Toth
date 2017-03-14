package br.com.tothprofessor.tothaluno.libs;


import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by Felipe on 04/03/2017.
 */


public class BimestreFragmentAtvidades extends ListFragment {

    ListView listView;

    String[] notificacoes_titulo;
    String[] notificacoes_subtitulo;
    BimestreAdapter adapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View rootView = inflater.inflate(R.layout.fragment_bimestre_atividades, container,false);

        listView = (ListView) rootView.findViewById(R.id.list_view_notificacoes_activity);
        notificacoes_titulo = getResources().getStringArray(R.array.notificacoes_titulo);
        notificacoes_subtitulo = getResources().getStringArray(R.array.notificacoes_subtitulo);

        int i = 0;
//        adapter = new BimestreAdapter(getApplicationContext(), R.layout.item_lista_notificacoes);
        adapter = new BimestreAdapter(this.getActivity(),R.layout.item_lista_notificacoes);
        listView.setAdapter(adapter);
        for(String titulo: notificacoes_titulo) {
            BimestreDataProvider dataProvider = new BimestreDataProvider(titulo, notificacoes_subtitulo[i]);
            adapter.add(dataProvider);
            i++;
        }

        return rootView;

   }


}
