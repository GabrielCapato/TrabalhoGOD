/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.Dao;

import br.com.grupointegrado.model.Anuncio;
import br.com.grupointegrado.model.Categoria;
import com.sun.media.sound.SoftAbstractResampler;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author alunocentro
 */
public class AnuncioDao {
      
    private final Connection conexao;

    public AnuncioDao(Connection conexao) {
        this.conexao = conexao;
    }  
    
    public void Insert(Anuncio obj)throws SQLException{
        try {
        String sql = "INSERT INTO anuncio (nome, descr, PATH, anoModelo, anoFab, combustivel, categoria, valor, km) VALUES ('?','?','?','?','?','?','?','?','?')";
        PreparedStatement ps = conexao.prepareStatement(sql);
        ps.setString(1,obj.getNome());
        ps.setString(2,obj.getDescr());
        ps.setString(3,"488817006229252-full.jpg");
        ps.setInt(4,obj.getAnoModelo());
        ps.setInt(5,obj.getAnoFabr());
        ps.setInt(6,obj.getCombustivel());
        ps.setInt(7,obj.getCategoria());
        ps.setDouble(8,obj.getValor());
        ps.setDouble(9,obj.getKM());
        
        ps.executeQuery();
        } catch (SQLException e) {
            System.out.println("Erro ao Gravar " + e);
        }
    }
    public List<Anuncio> getAnuncio() throws SQLException{
        
        String sql = "SELECT * FROM anuncio";
        PreparedStatement ps = conexao.prepareStatement(sql);
        List<Anuncio> lista = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        rs.first();
        do{
        Anuncio obj = getAnuncioByResultSet(rs);
        lista.add(obj);
        }while(rs.next());

        return lista;
    }
    
        public static Anuncio getAnuncioByResultSet(ResultSet rs) throws SQLException {
        Anuncio obj = new Anuncio();
        obj.setID(rs.getInt("ID"));
        obj.setNome(rs.getString("nome"));
        obj.setCaminhoImagem(rs.getString("PATH"));
        obj.setValor(rs.getInt("valor"));
        obj.setDescr(rs.getString("descr"));
        obj.setAnoModelo(rs.getInt("anoModelo"));
        obj.setAnoFabr(rs.getInt("anoFab"));
        obj.setCombustivel(rs.getInt("combustivel"));
        obj.setCategoria(rs.getInt("categoria"));
        obj.setKM(rs.getDouble("km"));
        
        return obj;
    }
    public Anuncio getAnuncioByID(int id) throws SQLException{
        String sql = "SELECT * FROM anuncio WHERE ID = ?";
        PreparedStatement ps = conexao.prepareStatement(sql);
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        rs.first();
        
        Anuncio obj = getAnuncioByResultSet(rs);
        
        return obj;
        
    }   

}
