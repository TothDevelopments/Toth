package br.com.tothprofessor.tothaluno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

/**
 * Created by kennedy on 10/02/17.
 */

public class LoginActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        Button btFacebook = (Button) findViewById(R.id.buttonEntrarFacebook);
        Button btGoogle = (Button) findViewById(R.id.buttonEntrarGoogle);
        Button btEntrar = (Button) findViewById(R.id.buttonEntrar);
        Button btCadastrar = (Button) findViewById(R.id.buttonCadastrar);
        Button btEsqueciSenha = (Button) findViewById(R.id.buttonEsqueciSenha);

        btFacebook.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });

        btGoogle.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });

        btEntrar.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(LoginActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });

        btCadastrar.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(LoginActivity.this, CadastrarEmailActivity.class);
                startActivity(intent);
            }
        });

        btEsqueciSenha.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(LoginActivity.this, EsqueciSenhaActivity.class);
                startActivity(intent);
            }
        });
    }
}
