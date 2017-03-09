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

public class BimestreFragmentProvas extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.fragment_bimestre_provas, container,false);

//        View provas = inflater.inflate(R.layout.fragment_bimestre_provas, container, false);
//        ((TextView)provas.findViewById(R.id.textView)).setText("Provas");
//        return provas;
    }
}
