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
import static java.lang.System.out;
import java.util.ArrayList;
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
        if (action == null || action == "") {
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
            String product_img = "images/" + request.getParameter("product_img");
            String product_describe = request.getParameter("describe");
            int quantity = Integer.parseInt(product_quantity);
            Float price = Float.parseFloat(product_price);
            int cid = Integer.parseInt(category_id);
            productDAO dao = new productDAO();
            Category cate = new Category(cid);
            String [] size_rw = product_size.split("\\s*,\\s*");
            String [] color_rw = product_color.split("\\s*,\\s*");
            int [] size = new int [size_rw.length];
            int [] color = new int [color_rw.length];
            //size
            List<Size> list = new ArrayList<>();
            try {
                for (int i = 0; i < size.length; i++) {
                    Size s = new Size(product_id,size_rw[i]);
                    list.add(s);
                }
            } catch (Exception e) {
            }
            // color
            List<Color> list2 = new ArrayList<>();
            try {
                for (int i = 0; i < color.length; i++) {
                    Color s1 = new Color(product_id,color_rw[i]);
                    list2.add(s1);
                }
            } catch (Exception e) {
            }
            
            Product product = new Product();
            product.setCate(cate);
            product.setProduct_id(product_id);
            product.setProduct_name(product_name);
            product.setProduct_price(price);
            product.setProduct_describe(product_describe);
            product.setQuantity(quantity);
            product.setImg(product_img);
            product.setSize(list);
            product.setColor(list2);
            dao.insertProduct(product);
            request.getRequestDispatcher("productmanager?action=insert").forward(request, response);
            }
        
        if(action.equalsIgnoreCase("deleteproduct")){
            String product_id = request.getParameter("product_id");
            productDAO dao = new productDAO();
            dao.ProductDelete(product_id);
            response.sendRedirect("productmanager");
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
        request.setCharacterEncoding("UTF-8");
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
