package br.com.tothprofessor.tothaluno.adapters;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextClock;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import br.com.tothprofessor.tothaluno.R;
import br.com.tothprofessor.tothaluno.classes.Atividade;

/**
 * Created by kennedy on 24/04/17.
 */

public class ListaAtividadesAdapter extends BaseAdapter {
    private final List<Atividade> atividades;
    private final Activity activity;

    public ListaAtividadesAdapter(List<Atividade> atividades, Activity activity){
        this.atividades = atividades;
        this.activity = activity;
    }

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
        return this.atividades.get(position).getId();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View linha = convertView;
        Atividade atividade = atividades.get(position);

        if (linha == null){
            linha = this.activity.getLayoutInflater().inflate(R.layout.item_lista_atividades, parent, false);
        }

        TextView titulo = (TextView) linha.findViewById(R.id.layout_item_titulo);
        TextView subtitulo = (TextView) linha.findViewById(R.id.layout_item_subtitulo);
        TextView diasRestantes = (TextView) linha.findViewById(R.id.layout_item_dias);
        ImageView imagem = (ImageView) linha.findViewById(R.id.imageViewAtividade);

        if(atividade.getTipo() == 1){
            imagem.setImageResource(R.drawable.icon_atividade_prova);
        } else if(atividade.getTipo() == 2){
            imagem.setImageResource(R.drawable.icon_atividade_trabalho);
        } else if(atividade.getTipo() == 3){
            imagem.setImageResource(R.drawable.icon_atividade_prova);
        }

        titulo.setText(atividade.getTitulo());
        subtitulo.setText(atividade.getSubtitulo());
        diasRestantes.setText("2 dias");

        return linha;
    }
}