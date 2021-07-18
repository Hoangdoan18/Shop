/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBConnection;
import entity.Products;
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
public class CategoryDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Products> getProductbyCategory(String Category) {
        try {
            ArrayList<Products> ct = new ArrayList<>();
            String sql = "SELECT *  FROM [dbo].[Products] where Category = " + Category;
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ct.add(new Products(rs.getInt("ProductID"),
                        rs.getInt("Price"),
                        rs.getString("Type"),
                        rs.getString("Category"),
                        rs.getString("ProductName"),
                        rs.getString("Material"),
                        rs.getBoolean("Sex"), sql));
            }
            return ct;
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Products> getProductbySexandType(boolean sex,String type) {
        try {
            ArrayList<Products> ct = new ArrayList<>();
            String sql = "SELECT *  FROM [dbo].[Products] where [Sex] = ? and [Type] = ?";
            conn = DBConnection.open();
            ps = conn.prepareStatement(sql);
            ps.setBoolean(1, sex);
            ps.setString(1, type);
            rs = ps.executeQuery();
            while (rs.next()) {
                ct.add(new Products(rs.getInt("ProductID"),
                        rs.getInt("Price"),
                        rs.getString("Type"),
                        rs.getString("Category"),
                        rs.getString("ProductName"),
                        rs.getString("Material"),
                        rs.getBoolean("Sex"), sql));
            }
            return ct;
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
