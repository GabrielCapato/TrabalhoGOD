/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.model;

/**
 *
 * @author alunocentro
 */
public class Anuncio {
    private int ID;
    private String nome;
    private String descr;
    private String caminhoImagem;
    private int anoModelo;
    private int anoFabr;
    private int combustivel;
    private int categoria;
    private double valor;
    private double KM;

    public Anuncio() {
    }

    public Anuncio(int ID, String nome, String descr, String caminhoImagem, int anoModelo, int anoFabr, int combustivel, int categoria, double valor, double KM) {
        this.ID = ID;
        this.nome = nome;
        this.descr = descr;
        this.caminhoImagem = caminhoImagem;
        this.anoModelo = anoModelo;
        this.anoFabr = anoFabr;
        this.combustivel = combustivel;
        this.categoria = categoria;
        this.valor = valor;
        this.KM = KM;
    }

    public double getKM() {
        return KM;
    }

    public void setKM(double KM) {
        this.KM = KM;
    }
    
    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getCaminhoImagem() {
        return caminhoImagem;
    }

    public void setCaminhoImagem(String caminhoImagem) {
        this.caminhoImagem = caminhoImagem;
    }

    public int getAnoModelo() {
        return anoModelo;
    }

    public void setAnoModelo(int anoModelo) {
        this.anoModelo = anoModelo;
    }

    public int getAnoFabr() {
        return anoFabr;
    }

    public void setAnoFabr(int anoFabr) {
        this.anoFabr = anoFabr;
    }

    public int getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(int combustivel) {
        this.combustivel = combustivel;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }


    }