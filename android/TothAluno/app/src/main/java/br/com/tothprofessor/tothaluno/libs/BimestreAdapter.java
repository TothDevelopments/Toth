package br.com.tothprofessor.tothaluno.libs;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

import br.com.tothprofessor.tothaluno.R;

/**
 * Created by Felipe on 13/03/2017.
 */

public class BimestreAdapter  extends ArrayAdapter {

    List list = new ArrayList();

    public BimestreAdapter(Context context, int resource) {
        super(context, resource);
    }

    static  class  DataHandler{
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
        BimestreAdapter.DataHandler handler;

        if (convertView == null){
            LayoutInflater inflater = (LayoutInflater) this.getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            row = inflater.inflate(R.layout.item_lista_bimestre, parent, false);
            handler = new BimestreAdapter.DataHandler();
            handler.titulo = (TextView) row.findViewById(R.id.layout_item_titulo_bimestre);
            handler.subtitulo = (TextView) row.findViewById(R.id.layout_item_subtitulo_bimestre);
            row.setTag(handler);
        }
        else {
            handler = (BimestreAdapter.DataHandler) row.getTag();
        }
        BimestreDataProvider dataProvider;
        dataProvider = (BimestreDataProvider)this.getItem(position);
        handler.titulo.setText(dataProvider.getBimestre_titulo());
        handler.subtitulo.setText(dataProvider.getBimestre_subtitulo());

        return row;
    }








}
