package br.com.tothprofessor.tothaluno.adapters;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import java.util.List;

import br.com.tothprofessor.tothaluno.R;
import br.com.tothprofessor.tothaluno.classes.Atividades;

/**
 * Created by kennedy on 19/04/17.
 */

public class AdapterListaAtividades extends BaseAdapter {

    private final List<Atividades> atividades;
    private Activity activity;

    public AdapterListaAtividades(List<Atividades> atividades, Activity activity) {
        this.atividades = atividades;
        this.activity = activity;
    }

    @Override
    public int getCount() {
        return atividades.size();
    }

    @Override
    public Object getItem(int position) {
        return atividades.get(position);
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = activity.getLayoutInflater().inflate(R.layout.item_lista_atividades, parent, false);
        return null;
    }
}
