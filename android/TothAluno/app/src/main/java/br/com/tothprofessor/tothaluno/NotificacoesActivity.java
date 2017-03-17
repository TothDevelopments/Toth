package br.com.tothprofessor.tothaluno;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.ListView;

import br.com.tothprofessor.tothaluno.libs.NotificacoesAdapter;
import br.com.tothprofessor.tothaluno.libs.NotificacoesDataProvider;


/**
 * Created by Felipe on 25/02/2017.
 */

public class NotificacoesActivity  extends AppCompatActivity {

    ListView listView;
    // Passar array de imagens para notificação
    //int[] img_notificacao = {}

    String[] notificacoes_titulo;
    String[] notificacoes_subtitulo;
    NotificacoesAdapter adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_notificacoes);
        listView = (ListView) findViewById(R.id.list_view_notificacoes_activity);
        notificacoes_titulo = getResources().getStringArray(R.array.notificacoes_titulo);
        notificacoes_subtitulo = getResources().getStringArray(R.array.notificacoes_subtitulo);

        int i = 0;
        adapter = new NotificacoesAdapter(getApplicationContext(), R.layout.item_lista_notificacoes);
        listView.setAdapter(adapter);
        for(String titulo: notificacoes_titulo) {
            NotificacoesDataProvider dataProvider = new NotificacoesDataProvider(R.drawable.botao_gmail, titulo, notificacoes_subtitulo[i]);
            adapter.add(dataProvider);
            i++;
        }
    }
}
