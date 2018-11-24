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
    private String titulo_anuncio;
    private String nome;
    private String descr;
    private String caminhoImagem;
    private int anoModelo;
    private int anoFabr;
    private int combustivel;
    private int categoria;
    private double valor;

    public Anuncio() {
    }

    public Anuncio(String titulo_anuncio, String nome, String descr, String caminhoImagem, int anoModelo, int anoFabr, int combustivel, int categoria, double valor) {
        this.titulo_anuncio = titulo_anuncio;
        this.nome = nome;
        this.descr = descr;
        this.caminhoImagem = caminhoImagem;
        this.anoModelo = anoModelo;
        this.anoFabr = anoFabr;
        this.combustivel = combustivel;
        this.categoria = categoria;
        this.valor = valor;
    }

    public String getTitulo_anuncio() {
        return titulo_anuncio;
    }

    public void setTitulo_anuncio(String titulo_anuncio) {
        this.titulo_anuncio = titulo_anuncio;
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