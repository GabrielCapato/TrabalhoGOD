/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.Dao;

import br.com.grupointegrado.model.Anuncio;
import br.com.grupointegrado.model.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author alunocentro
 */
public class AnuncioDao {
      
    private final Connection conexao;

    public AnuncioDao(Connection conexao) {
        this.conexao = conexao;
    }  
    
    public Anuncio getAnuncio() throws SQLException{
        
        String sql = "SELECT nomeAnuncio,caminhoIMG,valor FROM anuncioaps";
        PreparedStatement ps = conexao.prepareStatement(sql);
        
        ResultSet rs = ps.executeQuery();
        rs.first();
        
        Anuncio obj = getAnuncioByResultSet(rs);

        return obj;
    }
    
        public static Anuncio getAnuncioByResultSet(ResultSet rs) throws SQLException {
        Anuncio obj = new Anuncio();
        obj.setNome(rs.getString("nomeAnuncio"));
        obj.setCaminhoImagem(rs.getString("caminhoIMG"));
        obj.setValor(rs.getInt("valor"));
        
        return obj;
    }
    
}
