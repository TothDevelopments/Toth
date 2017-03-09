package br.com.tothprofessor.tothaluno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

/**
 * Created by kennedy on 28/02/17.
 */

public class ResultadoNovoGrupoActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_resultado_novo_grupo);

        Button buttonConfirmarEntrarGrupo = (Button) findViewById(R.id.buttonConfirmarEntrarGrupo);

        buttonConfirmarEntrarGrupo.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(ResultadoNovoGrupoActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }
}