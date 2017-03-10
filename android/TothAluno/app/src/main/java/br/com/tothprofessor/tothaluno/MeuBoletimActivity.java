package br.com.tothprofessor.tothaluno;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/**
 * Created by kennedy on 28/02/17.
 */

public class MeuBoletimActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_meu_boletim);

        RelativeLayout item_lista_1_bimestre = (RelativeLayout) findViewById(R.id.item_lista_1_bimestre);
        RelativeLayout item_lista_2_bimestre = (RelativeLayout) findViewById(R.id.item_lista_2_bimestre);
        RelativeLayout item_lista_3_bimestre = (RelativeLayout) findViewById(R.id.item_lista_3_bimestre);
        RelativeLayout item_lista_4_bimestre = (RelativeLayout) findViewById(R.id.item_lista_4_bimestre);

        item_lista_1_bimestre.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(MeuBoletimActivity.this, BimestreActivity.class);
                startActivity(intent);
            }
        });

        item_lista_2_bimestre.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(MeuBoletimActivity.this, BimestreActivity.class);
                startActivity(intent);
            }
        });

        item_lista_3_bimestre.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(MeuBoletimActivity.this, BimestreActivity.class);
                startActivity(intent);
            }
        });

        item_lista_4_bimestre.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent = new Intent(MeuBoletimActivity.this, BimestreActivity.class);
                startActivity(intent);
            }
        });
    }
}