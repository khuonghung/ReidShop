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
import com.vnpay.common.Config;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
        try {

            HttpSession session = request.getSession(true);
            Cart cart = null;
            String payment = null;
            billDAO dao = new billDAO();
            String payment_method = request.getParameter("payment_method");
            //check card
            Object o = session.getAttribute("cart");
            if (o != null) {
                cart = (Cart) o;
            } else {
                cart = new Cart();
            }
            User acc = null;
            Object u = session.getAttribute("user");
            if (o != null) {
                if (u != null) {
                    String address = request.getParameter("address");
                    String phone = request.getParameter("phone");
                    if (payment_method.equals("momo")) {
                        payment = "MOMO";
                    }
                    if (payment_method.equals("vnpay")) {
                        payment = "VNPAY";
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
                    if (payment_method.equals("vnpay")) {
                        Entity.Bill bill = dao.getBill();
                        String vnp_Version = "2.0.0";
                        String vnp_Command = "pay";
                        String vnp_OrderInfo = "Thanh toan don hang" + bill.getBill_id();
                        String orderType = "billpayment";
                        String vnp_TxnRef = bill.getBill_id() + "";
                        String vnp_IpAddr = Config.getIpAddress(request);
                        String vnp_TmnCode = Config.vnp_TmnCode;

                        int amount = Math.round(bill.getTotal()) * 100;
                        Map<String, String> vnp_Params = new HashMap<>();
                        vnp_Params.put("vnp_Version", vnp_Version);
                        vnp_Params.put("vnp_Command", vnp_Command);
                        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
                        vnp_Params.put("vnp_Amount", String.valueOf(amount));
                        vnp_Params.put("vnp_CurrCode", "VND");
                        String bank_code = "";
                        if (bank_code != null && bank_code.isEmpty()) {
                            vnp_Params.put("vnp_BankCode", bank_code);
                        }
                        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
                        vnp_Params.put("vnp_OrderInfo", vnp_OrderInfo);
                        vnp_Params.put("vnp_OrderType", orderType);

                        String locate = "vi";
                        if (locate != null && !locate.isEmpty()) {
                            vnp_Params.put("vnp_Locale", locate);
                        } else {
                            vnp_Params.put("vnp_Locale", "vn");
                        }
                        vnp_Params.put("vnp_ReturnUrl", Config.vnp_Returnurl);
                        vnp_Params.put("vnp_IpAddr", vnp_IpAddr);

                        Date dt = new Date();
                        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
                        String dateString = formatter.format(dt);
                        String vnp_CreateDate = dateString;
                        String vnp_TransDate = vnp_CreateDate;
                        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);

                        //Build data to hash and querystring
                        List fieldNames = new ArrayList(vnp_Params.keySet());
                        Collections.sort(fieldNames);
                        StringBuilder hashData = new StringBuilder();
                        StringBuilder query = new StringBuilder();
                        Iterator itr = fieldNames.iterator();
                        while (itr.hasNext()) {
                            String fieldName = (String) itr.next();
                            String fieldValue = (String) vnp_Params.get(fieldName);
                            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                                //Build hash data
                                hashData.append(fieldName);
                                hashData.append('=');
                                hashData.append(fieldValue);
                                //Build query
                                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                                query.append('=');
                                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                                if (itr.hasNext()) {
                                    query.append('&');
                                    hashData.append('&');
                                }
                            }
                        }
                        String queryUrl = query.toString();
                        String vnp_SecureHash = Config.Sha256(Config.vnp_HashSecret + hashData.toString());
                        queryUrl += "&vnp_SecureHashType=SHA256&vnp_SecureHash=" + vnp_SecureHash;
                        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
                        request.setAttribute("code", "00");
                        request.setAttribute("message", "success");
                        request.setAttribute("data", paymentUrl);
                        response.sendRedirect(paymentUrl);
                        return;
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
        } catch (Exception e) {
            request.getRequestDispatcher("404.jsp").forward(request, response);
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
