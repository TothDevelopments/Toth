package br.com.tothprofessor.tothaluno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
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

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar_resultadoNovoGrupo);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);

        Button buttonConfirmarEntrarGrupo = (Button) findViewById(R.id.buttonConfirmarEntrarGrupo);

        buttonConfirmarEntrarGrupo.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(ResultadoNovoGrupoActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}