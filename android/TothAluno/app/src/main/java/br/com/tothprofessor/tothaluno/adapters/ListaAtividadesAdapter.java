package br.com.tothprofessor.tothaluno.adapters;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextClock;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by kennedy on 24/04/17.
 */

public class ListaAtividadesAdapter extends BaseAdapter {

    private final List<Atividade> atividades;
    private final Activity activity;


    @Override
    public int getCount() {
        return this.atividades.size();
    }

    @Override
    public Object getItem(int position) {
        return this.atividades.get(position);
    }

    @Override
    public long getItemId(int position) {
        return this.atividades.get(position).getId;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View linha = convertView;

        if (linha == null){
            linha = this.activity.getLayoutInflater().inflate(R.layout.celula);
        }

        TextView nome = (TextView) linha.findViewById(R.id.elemento);

        nome.setText("abc");

        return linha;
    }
}