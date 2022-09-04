/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author tklin
 */
public class Item {
    private int itemID;
    private String itemName;
    private String itemDes;
    private double itemPrice;
    private String imgPath;
    private String itemStatus;
    private String itemQuantity;
    private int typeID;
    private int shopID;

    public Item() {
    }

    public Item(int itemID, String itemName, String itemDes, double itemPrice, String imgPath, String itemStatus, String itemQuantity, int typeID, int shopID) {
        this.itemID = itemID;
        this.itemName = itemName;
        this.itemDes = itemDes;
        this.itemPrice = itemPrice;
        this.imgPath = imgPath;
        this.itemStatus = itemStatus;
        this.itemQuantity = itemQuantity;
        this.typeID = typeID;
        this.shopID = shopID;
    }

    public int getItemID() {
        return itemID;
    }


    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemDes() {
        return itemDes;
    }

    public void setItemDes(String itemDes) {
        this.itemDes = itemDes;
    }

    public double getItemPrice() {
        return itemPrice;
    }

    public void setItemPrice(double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    public String getItemStatus() {
        return itemStatus;
    }

    public void setItemStatus(String itemStatus) {
        this.itemStatus = itemStatus;
    }

    public String getItemQuantity() {
        return itemQuantity;
    }

    public void setItemQuantity(String itemQuantity) {
        this.itemQuantity = itemQuantity;
    }

    public int getTypeID() {
        return typeID;
    }

    public void setTypeID(int typeID) {
        this.typeID = typeID;
    }

    public int getCfshopID() {
        return shopID;
    }

    
    
}
