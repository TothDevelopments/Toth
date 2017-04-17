package com.professor.toth.tothprofessor;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

/**
 * Created by kennedy on 11/02/17.
 */

public class EsqueciSenhaActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_esqueci_senha);

        Button btEnviarEmail = (Button) findViewById(R.id.buttonEnviarEmail);

        btEnviarEmail.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                EsqueciSenhaActivity.super.finish();
            }
        });
    }
}
