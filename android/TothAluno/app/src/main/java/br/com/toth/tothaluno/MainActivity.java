package br.com.toth.tothaluno;

import android.content.Intent;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.roughike.bottombar.BottomBar;
import com.roughike.bottombar.BottomBarTab;
import com.roughike.bottombar.OnTabSelectListener;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        BottomBar bottomBar = (BottomBar) findViewById(R.id.bottomBar);

        final BottomBarTab tabAtividades = bottomBar.getTabWithId(R.id.tab_atividades);
        final BottomBarTab tabCalendario = bottomBar.getTabWithId(R.id.tab_calendario);
        final BottomBarTab tabChats = bottomBar.getTabWithId(R.id.tab_chats);
        final BottomBarTab tabOpcoes = bottomBar.getTabWithId(R.id.tab_opcoes);

        tabChats.setBadgeCount(10);

        bottomBar.setOnTabSelectListener(new OnTabSelectListener() {
            @Override
            public void onTabSelected(@IdRes int tabId) {
                if (tabId == R.id.tab_atividades) {
                    tabAtividades.removeBadge();
                } else if (tabId == R.id.tab_calendario) {
                    tabCalendario.removeBadge();
                } else if (tabId == R.id.tab_chats) {
                    tabChats.removeBadge();
                } else if (tabId == R.id.tab_opcoes) {
                    tabOpcoes.removeBadge();
                }
            }
        });



    }

    public void login(View view){
        Intent intent = new Intent(this, LoginActivity.class);
        startActivity(intent);
    }
}
