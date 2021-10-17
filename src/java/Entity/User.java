/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Khuong Hung
 */
public class User {
    int user_id;
    String user_email;
    String user_pass;
    String isAdmin;
    String user_img;

    public User() {
    }

    public User(int user_id, String user_email, String user_pass, String isAdmin, String user_img) {
        this.user_id = user_id;
        this.user_email = user_email;
        this.user_pass = user_pass;
        this.isAdmin = isAdmin;
        this.user_img = user_img;
    }
    
    public User(String user_email, String user_pass) {
        this.user_email = user_email;
        this.user_pass = user_pass;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_pass() {
        return user_pass;
    }

    public void setUser_pass(String user_pass) {
        this.user_pass = user_pass;
    }

    public String getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(String isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getUser_img() {
        return user_img;
    }

    public void setUser_img(String user_img) {
        this.user_img = user_img;
    }
    
    
}
