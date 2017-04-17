package br.com.tothprofessor.tothaluno.libs;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by Felipe on 04/03/2017.
 */

public class BimestreFragmentProvas extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View rootView = inflater.inflate(R.layout.fragment_bimestre_provas, container, false);
        ListView listView = (ListView)  rootView.findViewById(R.id.list_view_bimestre_provas);
        String[] notificacoes_titulo = getResources().getStringArray(R.array.notificacoes_titulo);
        String[] notificacoes_subtitulo = getResources().getStringArray(R.array.notificacoes_subtitulo);

        int i = 0;
        BimestreAdapter adapter = new BimestreAdapter(this.getActivity(), R.layout.item_lista_bimestre);
        listView.setAdapter(adapter);
        for (String titulo : notificacoes_titulo) {
            BimestreDataProvider dataProvider = new BimestreDataProvider(R.drawable.botao_gmail, titulo, notificacoes_subtitulo[i]);
            adapter.add(dataProvider);
            i++;
        }
        return  rootView;
    }
}
