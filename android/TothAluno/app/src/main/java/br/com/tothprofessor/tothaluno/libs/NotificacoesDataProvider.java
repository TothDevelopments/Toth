package br.com.tothprofessor.tothaluno.libs;

/**
 * Created by Felipe on 12/03/2017.
 */

public class NotificacoesDataProvider {

   // private int img_notificacao;
    private String notificacoes_titulo;
    private String notificacoes_subtitulo;

//    public int getImg_notificacao() {
//        return img_notificacao;
//    }
//
//    public void setImg_notificacao(int img_notificacao) {
//        this.img_notificacao = img_notificacao;
//    }

    public String getNotificacoes_titulo() {
        return notificacoes_titulo;
    }

    public void setNotificacoes_titulo(String notificacoes_titulo) {
        this.notificacoes_titulo = notificacoes_titulo;
    }

    public String getNotificacoes_subtitulo() {
        return notificacoes_subtitulo;
    }

    public void setNotificacoes_subtitulo(String notificacoes_subtitulo) {
        this.notificacoes_subtitulo = notificacoes_subtitulo;
    }

//    public NotificacoesDataProvider(int img_notificacao, String notificacoes_titulo, String notificacoes_subtitulo) {
//        this.setImg_notificacao(img_notificacao);
//        this.setNotificacoes_titulo(notificacoes_titulo);
//        this.setNotificacoes_subtitulo(notificacoes_subtitulo);
//    }
    public NotificacoesDataProvider(String notificacoes_titulo, String notificacoes_subtitulo) {
        this.setNotificacoes_titulo(notificacoes_titulo);
        this.setNotificacoes_subtitulo(notificacoes_subtitulo);
    }
}
