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
public class Categoria {
  private int ID;
  private String cat;

    public Categoria() {
    }

    public Categoria(int ID, String cat) {
        this.ID = ID;
        this.cat = cat;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    } 
}
