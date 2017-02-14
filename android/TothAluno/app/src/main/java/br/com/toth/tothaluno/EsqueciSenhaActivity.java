package br.com.toth.tothaluno;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Toast;

/**
 * Created by kennedy on 11/02/17.
 */

public class EsqueciSenhaActivity extends AppCompatActivity{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_esqueci_senha);

    }

    public void Toast(View view){
        Toast.makeText(getApplicationContext(), "Esqueci a senha.", Toast.LENGTH_LONG).show();
    }
}
