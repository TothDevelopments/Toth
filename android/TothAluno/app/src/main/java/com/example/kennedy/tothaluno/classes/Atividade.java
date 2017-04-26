package com.example.kennedy.tothaluno.classes;

import java.util.Date;

/**
 * Created by kennedy on 24/04/17.
 */

public class Atividade {
    private int id;
    private int tipo;
    private String titulo;
    private String subtitulo;
    private Date dataEntrega;

    public Atividade(int id, int tipo, String titulo, String subtitulo, Date dataEntrega){
        this.id = id;
        this.tipo = tipo;
        this.titulo = titulo;
        this.subtitulo = subtitulo;
        this.dataEntrega = dataEntrega;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }


//    public String getDiasRestantesEntrega(){
//        this.
//    }
}
