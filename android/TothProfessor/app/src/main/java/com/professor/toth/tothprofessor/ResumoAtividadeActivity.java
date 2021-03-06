package com.professor.toth.tothprofessor;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * Created by kennedy on 18/02/17.
 */

public class ResumoAtividadeActivity extends AppCompatActivity {

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
        setContentView(R.layout.activity_resumo_atividade);

        textViewAtividadeNota = (TextView) findViewById(R.id.textViewAtividadeNota);
        textViewNomeAtividade = (TextView) findViewById(R.id.textViewNomeAtividade);
        textViewDataEntrega = (TextView) findViewById(R.id.textViewDataEntrega);
        textViewTempoatividade = (TextView) findViewById(R.id.textViewTempoatividade);
        textViewIntroducaoAtividade = (TextView) findViewById(R.id.textViewIntroducaoAtividade);
        buttonVerCorrecao = (Button) findViewById(R.id.buttonVerCorrecao);
        backgroundAtividadeNota = (LinearLayout) findViewById(R.id.backgroundAtividadeNota);


        textViewAtividadeNota.setText("T");
        textViewNomeAtividade.setText("Nome da Atividade");
        textViewDataEntrega.setText("Entregar dia 25 de março");
        textViewTempoatividade.setText("50 minutos para realizar a atividade.");
        textViewIntroducaoAtividade.setText("Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker. Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.");
        buttonVerCorrecao.setText("Iniciar");
        backgroundAtividadeNota.setBackgroundColor(Color.parseColor("#8BC34A"));


    }


}
