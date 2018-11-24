/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.grupointegrado.servlet;

import br.com.grupointegrado.Dao.AnuncioDao;
import br.com.grupointegrado.model.Anuncio;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gabriel Capato
 */
public class AnuncioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = (Connection) req.getAttribute("conexao");
        AnuncioDao Adao = new AnuncioDao(conn);
        int ID = Integer.parseInt(req.getParameter("anuncio"));
        try {
            Anuncio obj = Adao.getAnuncioByID(ID);
            req.setAttribute("classificado",obj);
        } catch (SQLException ex) {
            Logger.getLogger(AnuncioServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        RequestDispatcher JotaQuest = req.getRequestDispatcher("/WEB-INF/paginas/anuncio.jsp");
        JotaQuest.forward(req, resp);

    }
}
