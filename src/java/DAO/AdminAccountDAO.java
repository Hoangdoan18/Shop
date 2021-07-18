/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBConnection;
import entity.Account;
import entity.AdminAccount;
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
public class AdminAccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public AdminAccount checkAccount(String user, String pass){
        try {
            String query = "SELECT * FROM [dbo].[AccountAdmin] where username = ? and password = ?";
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {                
                AdminAccount aa = new AdminAccount(rs.getString("Username"),rs.getString("Password"));
                return aa;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
