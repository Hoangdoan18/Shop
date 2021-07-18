/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBConnection;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
public class LoginDAO extends DBConnection{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    public Account checkAccount(String user, String pass){
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            String query = "SELECT * FROM [dbo].[Account] where username = ? and password = ?";
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {                
                Account a = new Account();
                a.setCustomerID(rs.getInt("CustomerID"));                
                a.setName(rs.getString("FullName"));
                a.setAddress(rs.getString("Address"));
                a.setPhone(rs.getString("PhoneNumber"));
                a.setEmail(rs.getString("FullName"));
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Account getAccountByUsername(String user) {

        try {
            String sql = "SELECT *  FROM [dbo].[Account] where Username = " + user;
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setCustomerID(rs.getInt("CustomerID"));
                a.setName(rs.getString("FullName"));
                a.setAddress(rs.getString("Address"));
                a.setPhone(rs.getString("PhoneNumber"));
                a.setEmail(rs.getString("Email"));
                a.setUsername(rs.getString("UserName"));
                a.setPassword(rs.getString("Password"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void insertAccount(Account a) {
        try {
            String sql = "INSERT INTO [dbo].[Account]\n"
                    + "           ([FullName]\n"
                    + "           ,[Address]\n"
                    + "           ,[PhoneNumber]\n"
                    + "           ,[Email]\n"
                    + "           ,[UserName]\n"
                    + "           ,[Password])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            conn = new DBConnection().open();
            ps = conn.prepareStatement(sql);
            ps.setString(1, a.getName());
            ps.setString(2, a.getAddress());
            ps.setString(3, a.getPhone());
            ps.setString(4, a.getEmail());
            ps.setString(5, a.getUsername());
            ps.setString(6, a.getPassword());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
    

