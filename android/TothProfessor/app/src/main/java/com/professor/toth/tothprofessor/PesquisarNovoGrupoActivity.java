package com.professor.toth.tothprofessor;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

/**
 * Created by kennedy on 28/02/17.
 */

public class PesquisarNovoGrupoActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_pesquisar_novo_grupo);

        Button buttonPesquisarCodigo = (Button) findViewById(R.id.buttonPesquisarCodigo);

        buttonPesquisarCodigo.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(PesquisarNovoGrupoActivity.this, ResultadoNovoGrupoActivity.class);
                startActivity(intent);
            }
        });

    }
}