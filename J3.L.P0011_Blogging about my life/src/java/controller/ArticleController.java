/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ArticleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ArticleModel;

/**
 *
 * @author TASS
 */
@WebServlet(name = "ArticleController", urlPatterns = {"/about", "/detail"})
public class ArticleController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AboutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AboutController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String url = request.getRequestURI();
            
            String view = "";
            ArticleModel article = null;
            int pageCounter = 0;
            ArticleDAO articleDAO = new ArticleDAO();
            if (url.startsWith(request.getContextPath() + "/about")) {
                article = articleDAO.findById(1);
                view = "view/about.jsp";
            } else if (url.startsWith(request.getContextPath() + "/detail")) {
                int id = Integer.parseInt(request.getParameter("id"));
                article = articleDAO.findById(id);
                if (article != null) {
                    view = "view/detail.jsp";
                    articleDAO.updatePageCounter();
                    pageCounter = articleDAO.getPageCounter();
                } else {
                    throw new Exception();
                }
            }
            
            request.setAttribute("pageCounter", pageCounter);
            request.setAttribute("article", article);
            request.getRequestDispatcher(view).forward(request, response);
        } catch (Exception ex) {
            request.getRequestDispatcher("common/error.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
