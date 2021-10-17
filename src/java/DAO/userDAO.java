/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Khuong Hung
 */
public class userDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public User check(String user_email, String user_pass){
            try {
                String query = "select * from users where user_email = ? and user_pass = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, user_email);
                ps.setString(2, user_pass); 
                rs = ps.executeQuery();
                
                while(rs.next()){
                   User a = new User(rs.getString(1),rs.getString(2));
                   return a;
                }
            } catch (Exception e) {
            }
        return null;
    }
//    public Account checkAcc(String user){
//            try {
//                String query = "select * from users where user_email = ?";
//                conn = new DBContext().getConnection();
//                ps = conn.prepareStatement(query);
//                ps.setString(1, user);
//                rs = ps.executeQuery();
//                while(rs.next()){
//                   Account a = new Account(rs.getString(1),rs.getString(2));
//                   return a;
//                }
//            } catch (Exception e) {
//            }
//        return null;
//    }
//    public void signup(String user, String pass){
//            try {
//                String query = "insert into users values(?,?,?,?,?)";
//                conn = new DBContext().getConnection();
//                ps = conn.prepareStatement(query);
//                ps.setString(1, "1");
//                ps.setString(2, pass); 
//                ps.setString(3, user);
//                ps.setString(4, "0"); 
//                ps.setString(5, pass); 
//                ps.executeUpdate();
//                
//            } catch (Exception e) {
//            };
//    }
}
