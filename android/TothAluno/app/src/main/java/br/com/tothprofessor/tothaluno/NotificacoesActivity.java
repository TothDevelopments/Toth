package br.com.tothprofessor.tothaluno;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Created by Felipe on 25/02/2017.
 */

public class NotificacoesActivity  extends AppCompatActivity {


    private TextView textViewAtividadeNota;
    private TextView textViewNomeAtividade;
    private TextView textViewDataEntrega;
    private TextView textViewTempoatividade;
    private TextView textViewIntroducaoAtividade;
    private Button buttonVerCorrecao;
    private LinearLayout backgroundAtividadeNota;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_notificacoes);



    }
}
