package com.professor.toth.tothprofessor.libs;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.professor.toth.tothprofessor.R;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 */
public class BottomNavigatorConversasAdapter extends RecyclerView.Adapter<BottomNavigatorConversasAdapter.ViewHolder> {

	private ArrayList<String> mDataset = new ArrayList<>();
//	private Boolean exibeCalendario = true;

	public static class ViewHolder extends RecyclerView.ViewHolder {
		public TextView mTextViewTitulo;
		public TextView mTextViewSubtitulo;
		public TextView mTextViewHora;
		public ImageView mImageView;
//		public LinearLayout mLinearLayout_lista_ativiade;

		public ViewHolder(View v) {
			super(v);
			mTextViewTitulo = (TextView) v.findViewById(R.id.textView_titulo_conversa_grupo);
			mTextViewSubtitulo = (TextView) v.findViewById(R.id.textView_subtitulo_conversa_grupo);
			mTextViewHora = (TextView) v.findViewById(R.id.textView_hora_conversa_grupo);
			mImageView = (ImageView) v.findViewById(R.id.imageViewAtividade);
//			mLinearLayout_lista_ativiade = (LinearLayout) v.findViewById(R.id.linear_layout_lista);
		}
	}

	public BottomNavigatorConversasAdapter(ArrayList<String> dataset) {
		mDataset.clear();
//		exibeCalendario = true;
		mDataset.addAll(dataset);
	}

	@Override
	public BottomNavigatorConversasAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
		View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_conversa_grupo, parent, false);
		ViewHolder vh = new ViewHolder(v);
		return vh;
	}

	@Override
	public void onBindViewHolder(ViewHolder holder, int position) {
		holder.mTextViewTitulo.setText(mDataset.get(position));
		holder.mTextViewSubtitulo.setText("Fulano: Última mensagem do grupo...");

		Random gerador = new Random();
		int aux = gerador.nextInt(4);
		if (aux == 1){
			holder.mTextViewHora.setText("13:09");
		} else if (aux == 2){
			holder.mTextViewHora.setText("Ontem");
		} else if (aux == 3){
			holder.mTextViewHora.setText("1 semana");
		}
	}

	@Override
	public int getItemCount() {
		return mDataset.size();
	}

}
