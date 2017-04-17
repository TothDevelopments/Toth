package br.com.tothprofessor.tothaluno.libs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by Felipe on 12/03/2017.
 */

public class NotificacoesAdapter extends ArrayAdapter {

    List list = new ArrayList();

    public NotificacoesAdapter( Context context, int resource) {
        super(context, resource);
    }

    static  class  DataHandler{
        ImageView imagem;
        TextView titulo;
        TextView subtitulo;
    }

    @Override
    public void add( Object object) {
        super.add(object);
        list.add(object);
    }

    //Quatidade de itens na lista
    @Override
    public int getCount() {
        return this.list.size();
    }

    @Override
    public Object getItem(int position) {
        return this.list.get(position);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View row;
        row = convertView;
        DataHandler handler;

        if (convertView == null){
            LayoutInflater inflater = (LayoutInflater) this.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            row = inflater.inflate(R.layout.item_lista_notificacoes, parent, false);
            handler = new DataHandler();
            handler.titulo = (TextView) row.findViewById(R.id.layout_item_titulo_notificacoes);
            handler.subtitulo = (TextView) row.findViewById(R.id.layout_item_subtitulo_notificacoes);
            handler.imagem = (ImageView) row.findViewById(R.id.imageViewAtividade);
            row.setTag(handler);
        }
        else {
            handler = (DataHandler) row.getTag();
        }
        NotificacoesDataProvider dataProvider;
        dataProvider = (NotificacoesDataProvider)this.getItem(position);
        handler.imagem.setImageResource(dataProvider.getImg_notificacao());
        handler.titulo.setText(dataProvider.getNotificacoes_titulo());
        handler.subtitulo.setText(dataProvider.getNotificacoes_subtitulo());

        return row;
    }
}
