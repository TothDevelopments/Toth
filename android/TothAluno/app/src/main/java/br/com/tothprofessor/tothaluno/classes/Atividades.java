package br.com.tothprofessor.tothaluno.classes;

import java.util.Date;

/**
 * Created by kennedy on 19/04/17.
 */

public class Atividades {
    private int id;
    private int tipo;
    private String titulo;
    private String conteudo;
    private Date dataEntrega;

    public Atividades(int id,int tipo, String titulo, String conteudo, Date dataEntrega){
        this.id = id;
        this.tipo = tipo;
        this.titulo = titulo;
        this.conteudo = conteudo;
        this.dataEntrega = dataEntrega;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public Date getDataEntrega() {
        return dataEntrega;
    }

    public void setDataEntrega(Date dataEntrega) {
        this.dataEntrega = dataEntrega;
    }
}
