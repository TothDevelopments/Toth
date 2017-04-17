package br.com.tothprofessor.tothaluno;

import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
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

    private Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_notificacoes);

        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP) {
            getWindow().setStatusBarColor(Color.parseColor("#0D47A1"));
        }

        toolbar = (Toolbar) findViewById(R.id.toolbar_notificacoes);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);

        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP) {
            getWindow().setStatusBarColor(Color.parseColor("#0D47A1"));
        }


        listView = (ListView) findViewById(R.id.list_view_notificacoes_activity);
        notificacoes_titulo = getResources().getStringArray(R.array.notificacoes_titulo);
        notificacoes_subtitulo = getResources().getStringArray(R.array.notificacoes_subtitulo);

        int i = 0;
        adapter = new NotificacoesAdapter(getApplicationContext(), R.layout.item_lista_notificacoes);
        listView.setAdapter(adapter);
        for(String titulo: notificacoes_titulo) {
//            NotificacoesDataProvider dataProvider = new NotificacoesDataProvider(R.drawable.botao_gmail, titulo, notificacoes_subtitulo[i]);
            NotificacoesDataProvider dataProvider = new NotificacoesDataProvider(R.drawable.botao_gmail, "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.", notificacoes_subtitulo[i]);
            adapter.add(dataProvider);
            i++;
        }


    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}
