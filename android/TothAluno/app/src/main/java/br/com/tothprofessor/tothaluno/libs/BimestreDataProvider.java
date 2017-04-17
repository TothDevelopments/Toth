package br.com.tothprofessor.tothaluno.libs;

/**
 * Created by Felipe on 13/03/2017.
 */

public class BimestreDataProvider {

    private int img_notificacao;
    private String bimestre_titulo;
    private String bimestre_subtitulo;

    public int getImg_notificacao() {
        return img_notificacao;
    }

    public void setImg_notificacao(int img_notificacao) {
        this.img_notificacao = img_notificacao;
    }

    public String getBimestre_titulo() {
        return bimestre_titulo;
    }

    public void setBimestre_titulo(String bimestre_titulo) {
        this.bimestre_titulo = bimestre_titulo;
    }

    public String getBimestre_subtitulo() {
        return bimestre_subtitulo;
    }

    public void setBimestre_subtitulo(String bimestre_subtitulo) {
        this.bimestre_subtitulo = bimestre_subtitulo;
    }

//    public BimestreDataProvider(String bimestre_titulo, String bimestre_subtitulo) {
//        this.bimestre_titulo = bimestre_titulo;
//        this.bimestre_subtitulo = bimestre_subtitulo;
//    }
//

    public BimestreDataProvider(int img_notificacao, String bimestre_titulo, String bimestre_subtitulo) {
        this.img_notificacao = img_notificacao;
        this.bimestre_titulo = bimestre_titulo;
        this.bimestre_subtitulo = bimestre_subtitulo;
    }
}
