/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.OrderModel;
import model.ProductModel;

/**
 *
 * @author TASS
 */
@WebServlet(name = "BasketController", urlPatterns = {"/basket"})
public class BasketController extends HttpServlet {

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
            out.println("<title>Servlet BasketController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BasketController at " + request.getContextPath() + "</h1>");
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
//       try {
        // Getting servlet request query string.

        HttpSession session = request.getSession(false);
        OrderModel order;
        int productId = -1;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
        } catch (Exception ex) {
            //
        }
        if (productId != -1) {
            ProductDAO productDAO = new ProductDAO();
            ProductModel product = productDAO.findById(productId);

            if (session.getAttribute("order") == null) {
                order = new OrderModel();
            } else {
                order = (OrderModel) session.getAttribute("order");
            }

            String action = request.getParameter("action");
            if (action.equals("add")) {
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                order.addOrderProduct(product, quantity);
            } else if (action.equals("delete")) {
                order.deleteOrderProduct(product);
            }else if(action.equals("update")){
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                order.updateOrderProduct(product, quantity);
            }

            session.setAttribute("order", order);

            //back to previous page
            String referer = request.getHeader("Referer");
            response.sendRedirect(referer);
            return;
        }

        request.getRequestDispatcher("basket.jsp").forward(request, response);
//        } catch (Exception ex) {
//            //
//        }
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
