package br.com.tothprofessor.tothaluno;

import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/**
 * Created by kennedy on 28/02/17.
 */

public class MeuBoletimActivity extends AppCompatActivity {

    private Toolbar toolbar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_meu_boletim);

        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP) {
            getWindow().setStatusBarColor(Color.parseColor("#0D47A1"));
        }

        toolbar = (Toolbar) findViewById(R.id.toolbar_meuBoletim);
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);

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

    @Override
    public boolean onSupportNavigateUp() {
        onBackPressed();
        return true;
    }
}