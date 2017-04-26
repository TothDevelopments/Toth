package com.example.kennedy.tothaluno.adapters;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.kennedy.tothaluno.R;
import com.example.kennedy.tothaluno.classes.Atividade;
import com.example.kennedy.tothaluno.classes.Grupo;

import java.util.ArrayList;

/**
 * Created by kennedy on 24/04/17.
 */

public class ListaGruposHorizontalAdapter extends BaseAdapter {
    private final ArrayList<Grupo> grupos;
    private final Activity activity;

    public ListaGruposHorizontalAdapter(Activity activity, ArrayList<Grupo> grupos){
        this.grupos = grupos;
        this.activity = activity;
    }

    @Override
    public int getCount() {
        return this.grupos.size();
    }

    @Override
    public Object getItem(int position) {
        return this.grupos.get(position);
    }

    @Override
    public long getItemId(int position) {
        return this.grupos.get(position).getId();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        View item = convertView;
        Grupo grupo = grupos.get(position);

        if (item == null){
            item = this.activity.getLayoutInflater().inflate(R.layout.item_lista_grupos, parent, false);
        }

        TextView apelido = (TextView) item.findViewById(R.id.apelido_grupo);
        ImageView imagem = (ImageView) item.findViewById(R.id.imagem_grupo);

        apelido.setText(grupo.getApelido());
        imagem.setImageResource(R.drawable.ic_group);

        return item;
    }
}