/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Home;

import DAO.billDAO;
import Entity.Cart;
import Entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Khuong Hung
 */
public class Checkout extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }

        String payment_method = request.getParameter("payment_method");
        billDAO dao = new billDAO();
        User acc = null;
        Object u = session.getAttribute("user");
        if (o != null) {
            if (u != null) {
                String payment = null;
                String address = request.getParameter("address");
                String phone = request.getParameter("phone");
                if (payment_method.equals("momo")) {
                    payment = "MOMO";
                }
                if (payment_method.equals("vnpay")) {
                }
                if (payment_method.equals("cod")) {
                    payment = "COD";
                }
                int phonenumber = Integer.parseInt(phone);
                acc = (User) u;

                dao.addOrder(acc, cart, payment, address, phonenumber);
                session.removeAttribute("cart");
                session.setAttribute("size", 0);
                if (payment_method.equals("cod")) {
                    response.sendRedirect("home");
                }
                if (payment_method.equals("momo")) {
                    Entity.Bill bill = dao.getBill();
                    int total = Math.round(bill.getTotal());
                    request.setAttribute("total", total);
                    request.setAttribute("bill", bill);
                    request.getRequestDispatcher("qrcode.jsp").forward(request, response);
                }
            } else {
                response.sendRedirect("user?action=login");
            }
        } else {
            if (payment_method.equals("momo")) {
                Entity.Bill bill = dao.getBill();
                int total = Math.round(bill.getTotal());
                request.setAttribute("total", total);
                request.setAttribute("bill", bill);
                request.getRequestDispatcher("qrcode.jsp").forward(request, response);
            }
            if (payment_method.equals("cod")) {
                response.sendRedirect("home");
            }
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
        HttpSession session = request.getSession(true);
        Object u = session.getAttribute("user");
        if (u != null) {
            request.getRequestDispatcher("checkout.jsp").forward(request, response);
        } else {
            response.sendRedirect("user?action=login");
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
