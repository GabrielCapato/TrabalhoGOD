/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.Dao;

import br.com.grupointegrado.model.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alunocentro
 */
public class CategoriaDao {
    
    private final Connection conexao;

    public CategoriaDao(Connection conexao) {
        this.conexao = conexao;
    }

    public List<Categoria> buscaTodos() throws SQLException {

        String sql = "SELECT * FROM categoria";
        PreparedStatement statement = conexao.prepareStatement(sql);


        List<Categoria> categoria = new ArrayList<>();

        ResultSet result = statement.executeQuery();
        if (result.first()) {
            do {
                Categoria obj = getCategoriaByResultSet(result);
                categoria.add(obj);
            } while (result.next());
        }

        return categoria;
    }
    public static Categoria getCategoriaByResultSet(ResultSet result) throws SQLException {
        Categoria obj = new Categoria();
        obj.setID(result.getInt("ID"));
        obj.setCat(result.getString("descr"));
        return obj;
    }
    
}
