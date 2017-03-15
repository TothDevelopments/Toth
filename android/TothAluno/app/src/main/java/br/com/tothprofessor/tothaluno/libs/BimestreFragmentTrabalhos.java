package br.com.tothprofessor.tothaluno.libs;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import br.com.tothprofessor.tothaluno.R;


/**
 * Created by Felipe on 04/03/2017.
 */

public class BimestreFragmentTrabalhos extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        return inflater.inflate(R.layout.fragment_bimestre_trabalhos, container,false);
//        View trabalhos = inflater.inflate(R.layout.fragment_bimestre_trabalhos, container, false);
//        ((TextView)trabalhos.findViewById(R.id.textView)).setText("Trabalhos");
//        return trabalhos;
    }
}
