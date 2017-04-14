package com.professor.toth.tothprofessor;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

/**
 * Created by kennedy on 11/02/17.
 */

public class CadastrarEmailActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cadastrar_email);


        Button btEntrar = (Button) findViewById(R.id.buttonEntrarCadastrar);

        btEntrar.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(CadastrarEmailActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
    }

}
