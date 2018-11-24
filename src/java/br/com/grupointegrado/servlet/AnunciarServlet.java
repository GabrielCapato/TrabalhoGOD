/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.servlet;

//import br.com.grupointegrado.dao.AnuncioDao;
import br.com.grupointegrado.Dao.AnuncioDao;
import br.com.grupointegrado.model.Anuncio;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Capato
 */
public class AnunciarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher JotaQuest = req.getRequestDispatcher("/WEB-INF/paginas/anunciar.jsp");
        JotaQuest.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = (Connection) req.getAttribute("conexao");
        AnuncioDao dao = new AnuncioDao(conn);
        Anuncio obj = new Anuncio();
        obj.setNome(req.getParameter("nome"));
        obj.setAnoFabr(Integer.parseInt(req.getParameter("anoFabricacao")));
        obj.setAnoModelo(Integer.parseInt(req.getParameter("anoModelo")));
        obj.setKM(Double.parseDouble(req.getParameter("anoModelo")));
        obj.setValor(Double.parseDouble(req.getParameter("valor")));
        obj.setCombustivel(Integer.parseInt(req.getParameter("combustivel")));
        obj.setCategoria(Integer.parseInt(req.getParameter("categoria")));
        obj.setDescr(req.getParameter("descricao"));
        
        dao.Insert(obj);
        
        doGet(req, resp);  
    }    
}
