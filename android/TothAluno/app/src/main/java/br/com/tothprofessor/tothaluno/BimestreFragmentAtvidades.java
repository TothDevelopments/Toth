package br.com.tothprofessor.tothaluno;


import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * Created by Felipe on 04/03/2017.
 */


public class BimestreFragmentAtvidades extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {


        return inflater.inflate(R.layout.fragment_bimestre_atividades, container,false);

//        View atividades = inflater.inflate(R.layout.fragment_bimestre_atividades, container, false);
//        ((TextView)atividades.findViewById(R.id.textView)).setText("Atividades");
//        return atividades;
   }

}
