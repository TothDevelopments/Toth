package com.example.kennedy.tothaluno.classes;

import java.util.Date;

/**
 * Created by kennedy on 24/04/17.
 */

public class Grupo {
    private int id;
    private String apelido;
    private String cidade;
    private String escola;
    private Date dataEntrada;

    public Grupo(int id, String apelido, String cidade, String escola, Date dataEntrada){
        this.setId(id);
        this.setApelido(apelido);
        this.setCidade(cidade);
        this.setEscola(escola);
        this.setDataEntrada(dataEntrada);
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        apelido = apelido;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        cidade = cidade;
    }

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        escola = escola;
    }

    public Date getDataEntrada() {
        return dataEntrada;
    }

    public void setDataEntrada(Date dataEntrada) {
        this.dataEntrada = dataEntrada;
    }
}
