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
public class Products {

    private int ProductID;
    private int price;
    private String type;
    private String style;
    private String material;
    private String color;
    private boolean sex;
    private String descripts;

    public Products() {
    }

    public Products(int ProductID, int price, String type, String style, String material, String color, boolean sex, String descripts) {
        this.ProductID = ProductID;
        this.price = price;
        this.type = type;
        this.style = style;
        this.material = material;
        this.color = color;
        this.sex = sex;
        this.descripts = descripts;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public boolean isSex() {
        return sex;
    }

    public void setSex(boolean sex) {
        this.sex = sex;
    }

    public String getDescripts() {
        return descripts;
    }

    public void setDescripts(String descripts) {
        this.descripts = descripts;
    }
    

}
