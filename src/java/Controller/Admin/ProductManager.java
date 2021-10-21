/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import DAO.productDAO;
import Entity.Category;
import Entity.Color;
import Entity.Product;
import Entity.Size;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Khuong Hung
 */
public class ProductManager extends HttpServlet {

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
        String action = request.getParameter("action");
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        if (action == null) {
            
            productDAO c = new productDAO();
            List<Product> product = c.getProduct();
            List<Size> size = c.getSize();
            List<Color> color = c.getColor();
            request.setAttribute("ProductData", product);
            request.setAttribute("SizeData", size);
            request.setAttribute("ColorData", color);
            request.getRequestDispatcher("/admin/product.jsp").forward(request, response);
        }

        if (action.equalsIgnoreCase("insert")) {
            productDAO c = new productDAO();
            List<Category> category = c.getCategory();
            request.setAttribute("CategoryData", category);
            request.getRequestDispatcher("/admin/productinsert.jsp").forward(request, response);
        }

        if (action.equalsIgnoreCase("insertcategory")) {
            String name = request.getParameter("name");
            productDAO dao = new productDAO();
            Entity.Category c = dao.getCategoryByName(name);
            if (c != null) {
                request.setAttribute("error", name + " already");
                request.getRequestDispatcher("admin/productinsert.jsp").forward(request, response);
            } else {
                dao.insertCategory(name);
                request.getRequestDispatcher("productmanager?action=insert").forward(request, response);

            }
        }

        if (action.equalsIgnoreCase("insertproduct")) {
            String product_id = request.getParameter("product_id");
            String category_id = request.getParameter("category_id");
            String product_name = request.getParameter("product_name");
            String product_price = request.getParameter("price");
            String product_size = request.getParameter("size");
            String product_color = request.getParameter("color");
            String product_quantity = request.getParameter("quantity");
            String product_img = request.getParameter("product_img");
            String product_describe = request.getParameter("describe");
            
            int quantity = Integer.parseInt(product_quantity);
            Float price = Float.parseFloat(product_price);
            int cid = Integer.parseInt(category_id);
            
            productDAO dao = new productDAO();
            Category cate = new Category(cid);
            Product product = new Product(cate, product_id, product_name, price, product_describe, quantity, product_img);
            Size size = new Size(product_id, product_size);
            Color color = new Color(product_id, product_color);
            dao.insertProduct(product,size,color);
            request.getRequestDispatcher("productmanager?action=insert").forward(request, response);
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
        processRequest(request, response);
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
