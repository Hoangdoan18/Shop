/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.ProductDAO;
import entity.CartDetail;
import entity.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
public class AddtoCartServlet extends HttpServlet {

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
        processRequest(request, response);

        ProductDAO productDao = new ProductDAO();
        String pId = request.getParameter("pid");
        Products product = productDao.getProductbyID(Integer.parseInt(pId));

        HttpSession session = request.getSession();
        Object obj = session.getAttribute("cart");// luu tam vao session
        if (obj == null) {// tao moi
            // Tao mat hang
            CartDetail cartdetail = new CartDetail();

            cartdetail.setProduct(product);
            cartdetail.setQuantity(1);
            cartdetail.setUnitprice(product.getPrice());
            // gio hang co nhieu mat hang
            Map<String, CartDetail> map = new HashMap<>();
            map.put(pId, cartdetail);// them mat hang vao ds

            session.setAttribute("cart", map);// luu tam vao session
        } else {
            Map<String, CartDetail> map = (Map<String, CartDetail>) obj;

            CartDetail billProduct = map.get(pId);

            if (billProduct == null) {
                billProduct = new CartDetail();
                billProduct.setProduct(product);
                billProduct.setQuantity(1);
                billProduct.setUnitprice(product.getPrice());

                map.put(pId, billProduct);
            } else {

                billProduct.setQuantity(billProduct.getQuantity() + 1);
            }

            session.setAttribute("cart", map);// luu tam vao session
        }

        response.sendRedirect("/cart");
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
