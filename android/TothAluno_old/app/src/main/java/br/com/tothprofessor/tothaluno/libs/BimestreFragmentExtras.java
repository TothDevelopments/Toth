package br.com.tothprofessor.tothaluno.libs;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by Felipe on 17/03/2017.
 */

public class BimestreFragmentExtras extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {


        View rootView = inflater.inflate(R.layout.fragment_bimestre_extras, container, false);
        ListView listView = (ListView)  rootView.findViewById(R.id.list_view_bimestre_extras);
        String[] notificacoes_titulo = getResources().getStringArray(R.array.notificacoes_titulo);
        String[] notificacoes_subtitulo = getResources().getStringArray(R.array.notificacoes_subtitulo);

        int i = 0;
        BimestreAdapter adapter = new BimestreAdapter(this.getActivity(), R.layout.item_lista_bimestre);
        listView.setAdapter(adapter);
        for (String titulo : notificacoes_titulo) {
//            BimestreDataProvider dataProvider = new BimestreDataProvider(R.drawable.botao_gmail, titulo, notificacoes_subtitulo[i]);
            BimestreDataProvider dataProvider = new BimestreDataProvider(R.drawable.botao_gmail, "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.", notificacoes_subtitulo[i]);

            adapter.add(dataProvider);
            i++;
        }
        return  rootView;

    }
}
