package br.com.toth.tothaluno;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Toast;

/**
 * Created by kennedy on 11/02/17.
 */

public class CadastrarEmailActivity extends AppCompatActivity{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.cadastrar_email);

    }

    public void Toast(View view){
        Toast.makeText(getApplicationContext(), "Botão login tocado.", Toast.LENGTH_LONG).show();
    }
}
