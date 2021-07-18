/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author USER
 */
public class CartDetail {
   
    private Products product;
    private String size;
    private int unitprice;
    private int quantity;

    public CartDetail() {
    }

    public CartDetail(Products product, String size, int unitprice, int quantity) {
        this.product = product;
        this.size = size;
        this.unitprice = unitprice;
        this.quantity = quantity;
    }

    

    public Products getProduct() {
        return product;
    }

    public void setProduct(Products product) {
        this.product = product;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(int unitprice) {
        this.unitprice = unitprice;
    }

    
  
}
