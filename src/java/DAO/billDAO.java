/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Entity.Bill;
import Entity.Cart;
import Entity.Item;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Khuong Hung
 */
public class  billDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public void addOrder(User u, Cart cart, String payment, String address, int phone) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        
        try {
            String sql="insert into [bill] values(?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, u.getUser_id());
            ps.setDouble(2, cart.getTotalMoney());
            ps.setString(3, payment);
            ps.setString(4, address);
            ps.setString(5, date);
            ps.setInt(6, phone);
            ps.executeUpdate();
            
            String sql1="select top 1 bill_id from [bill] order by bill_id desc";
            ps = conn.prepareStatement(sql1);
            rs = ps.executeQuery();
            
            if(rs.next()){
                int bill_id=rs.getInt(1);
                for(Item i:cart.getItems()){
                String sql2="insert into [bill_detail] values(?,?,?,?,?,?)";
                double total = i.getQuantity()*i.getProduct().getProduct_price();
                ps = conn.prepareStatement(sql2);
                ps.setInt(1, bill_id);
                ps.setString(2, i.getProduct().getProduct_id());
                ps.setInt(3, i.getQuantity());
                ps.setString(4, i.getSize());
                ps.setString(5, i.getColor());
                ps.setDouble(6, total);
                ps.executeUpdate();
            }
            }

            String sql3 = "update product set quantity = quantity - ? "
                        + "where product_id = ?";
            ps = conn.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                ps.setInt(1, i.getQuantity());
                ps.setString(2, i.getProduct().getProduct_id());
                ps.executeUpdate();
            }

        } catch (Exception e) {
        }
    }
    
    public List<Bill> getBillInfo(){
        List<Bill> list = new ArrayList<>();
        String sql = "select b.bill_id, u.user_name,b.phone,b.address,b.date,b.total,b.payment from bill b inner join users u on b.user_id = u.user_id";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getString(2));
                list.add(new Bill(rs.getInt(1),u , rs.getFloat(6), rs.getString(7), rs.getString(4), rs.getDate(5), rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Bill getBill() {
        List<Bill> list = new ArrayList<>();
        String sql = "select top 1 bill_id, total, date from [bill] order by bill_id desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                return(new Bill(rs.getInt(1),rs.getFloat(2), rs.getDate(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
