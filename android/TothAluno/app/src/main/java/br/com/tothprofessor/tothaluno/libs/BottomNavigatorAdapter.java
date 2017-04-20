package br.com.tothprofessor.tothaluno.libs;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Random;

import br.com.tothprofessor.tothaluno.R;
import br.com.tothprofessor.tothaluno.classes.Atividades;

/**
 *
 */
public class BottomNavigatorAdapter extends RecyclerView.Adapter<BottomNavigatorAdapter.ViewHolder> {

	private ArrayList<Atividades> mDataset = new ArrayList<>();
	private Boolean exibeListaGrupos = true;

	public static class ViewHolder extends RecyclerView.ViewHolder {
		public TextView mTextViewTitulo;
		public TextView mTextViewSubtitulo;
		public TextView mTextViewDiasRestantes;
		public ImageView mImageView;

		public ViewHolder(View v) {
			super(v);
			mTextViewTitulo = (TextView) v.findViewById(R.id.layout_item_titulo);
			mTextViewSubtitulo = (TextView) v.findViewById(R.id.layout_item_subtitulo);
			mTextViewDiasRestantes = (TextView) v.findViewById(R.id.layout_item_dias);
			mImageView = (ImageView) v.findViewById(R.id.imageViewAtividadeListaAtividades);
		}
	}

	public BottomNavigatorAdapter(ArrayList<Atividades> dataset) {
		mDataset.clear();
		exibeListaGrupos = true;
		mDataset.addAll(dataset);
	}

	@Override
	public BottomNavigatorAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		if (exibeListaGrupos) {
			View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.lista_grupos_horizontal, parent, false);
			ViewHolder vh = new ViewHolder(v);
			exibeListaGrupos = false;
			return vh;
		} else {
			View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_lista_atividades, parent, false);
			ViewHolder vh = new ViewHolder(v);
			return vh;
		}
	}

	@Override
	public void onBindViewHolder(ViewHolder holder, int position) {

		Atividades atividade = mDataset.get(position);

		holder.mTextViewTitulo.setText(atividade.getTitulo());
		holder.mTextViewSubtitulo.setText(atividade.getConteudo());
		holder.mTextViewDiasRestantes.setText(String.valueOf(atividade.getDataEntrega()));

		if (atividade.getTipo() == 1){
			holder.mImageView.setImageResource(R.drawable.icon_atividade_tarefa);
		} else if (atividade.getTipo() == 2){
			holder.mImageView.setImageResource(R.drawable.icon_atividade_trabalho);
		} else if (atividade.getTipo() == 3){
			holder.mImageView.setImageResource(R.drawable.icon_atividade_prova);
		}
	}

	@Override
	public int getItemCount() {
		return mDataset.size();
	}

}
