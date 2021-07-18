/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author USER
 */
public class WarehouseDAO {
    
    private int ProductID;
    private String Size;
    private int Quantity;

    public WarehouseDAO(int ProductID, String Size, int Quantity) {
        this.ProductID = ProductID;
        this.Size = Size;
        this.Quantity = Quantity;
    }

    public WarehouseDAO() {
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getSize() {
        return Size;
    }

    public void setSize(String Size) {
        this.Size = Size;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }
    
}
