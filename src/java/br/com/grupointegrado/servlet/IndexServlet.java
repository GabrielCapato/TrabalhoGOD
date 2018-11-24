/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.servlet;

//import br.com.grupointegrado.dao.AnuncioDao;
import br.com.grupointegrado.Dao.AnuncioDao;
import br.com.grupointegrado.Dao.CategoriaDao;
import br.com.grupointegrado.model.Anuncio;
import br.com.grupointegrado.model.Categoria;
import com.sun.corba.se.spi.presentation.rmi.StubAdapter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Capato
 */
public class IndexServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        Connection conn = (Connection) req.getAttribute("conexao");
        AnuncioDao ADao = new AnuncioDao(conn);
        CategoriaDao CatDao = new CategoriaDao(conn);
        
        try {
            Anuncio obj = ADao.getAnuncio();
            List<Categoria> categorias = CatDao.buscaTodos();
            req.setAttribute("categorias", categorias);
            req.setAttribute("anuncios", obj);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            req.setAttribute("mensagem-erro", "Categorias não encontradas");
        }
        
        
        RequestDispatcher JotaQuest = req.getRequestDispatcher("/WEB-INF/paginas/Home.jsp");
        JotaQuest.forward(req, resp);
    }
    
    
  

}
