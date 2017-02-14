package br.com.toth.tothaluno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Toast;

/**
 * Created by kennedy on 10/02/17.
 */

public class LoginActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

    }

    public void entrarFacebook(View view){
        Toast.makeText(getApplicationContext(), "Entrar com o Facebook.", Toast.LENGTH_SHORT).show();
    }

    public void entrarGoogle(View view){
        Toast.makeText(getApplicationContext(), "Entrar com o Google.", Toast.LENGTH_SHORT).show();
    }

    public void abrirCadastrarEmail(View view){
        Intent intent = new Intent(this, CadastrarEmailActivity.class);
        startActivity(intent);
    }

    public void abrirEsqueciSenha(View view){
        Intent intent = new Intent(this, EsqueciSenhaActivity.class);
        startActivity(intent);
    }

    public void Toast(View view){
        Toast.makeText(getApplicationContext(), "Botão activity_login tocado.", Toast.LENGTH_SHORT).show();
    }
}
