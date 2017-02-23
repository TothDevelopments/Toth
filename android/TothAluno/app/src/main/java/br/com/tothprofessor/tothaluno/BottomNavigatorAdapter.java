package br.com.tothprofessor.tothaluno;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

/**
 *
 */
public class BottomNavigatorAdapter extends RecyclerView.Adapter<BottomNavigatorAdapter.ViewHolder> {

	private ArrayList<String> mDataset = new ArrayList<>();

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
			mImageView = (ImageView) v.findViewById(R.id.imageViewAtividade);
		}
	}

	public BottomNavigatorAdapter(ArrayList<String> dataset) {
		mDataset.clear();
		mDataset.addAll(dataset);
	}

	@Override
	public BottomNavigatorAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_lista_atividades, parent, false);
		ViewHolder vh = new ViewHolder(v);
		return vh;
	}

	@Override
	public void onBindViewHolder(ViewHolder holder, int position) {
		if (position == 0){

		}

		holder.mTextViewTitulo.setText(mDataset.get(position));
		holder.mTextViewSubtitulo.setText("Descrição...");
		holder.mTextViewDiasRestantes.setText("3 dias");
		holder.mImageView.setBackgroundResource(R.drawable.icone_atividade_tarefa);

	}

	@Override
	public int getItemCount() {
		return mDataset.size();
	}

}
