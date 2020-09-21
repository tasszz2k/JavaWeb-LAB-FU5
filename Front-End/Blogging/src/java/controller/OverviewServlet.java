/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Blog;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BlogRepository;

/**
 *
 * @author ViruSs0209
 */
public class OverviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int OVERVIEW_PER_PAGE = 3;
        int currentPage = 1;
        
        try {
            if (request.getParameter("page") != null) {
                currentPage = Integer.parseInt(request.getParameter("page"));
            }
            
            BlogRepository repository = new BlogRepository();
            
            ArrayList<Blog> blogs = repository.getAll();

            ArrayList<Blog> blogsByPage = repository.getListByPage(currentPage, OVERVIEW_PER_PAGE , blogs);
            
            int totalPages = blogs.size() / OVERVIEW_PER_PAGE;
            
            if (blogs.size() % OVERVIEW_PER_PAGE != 0) totalPages++;
            
            System.out.println(totalPages);
            
            if (blogsByPage.size() == 0) throw new Exception("No Blog Found");

            request.setAttribute("totalPages", totalPages);
            request.setAttribute("currentPage", currentPage);
            request.setAttribute("blogs", blogsByPage);
            request.setAttribute("currentMenu", "blog");
            request.getRequestDispatcher("/view/overview.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
            request.getRequestDispatcher("/view/error.jsp").forward(request, response);
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
