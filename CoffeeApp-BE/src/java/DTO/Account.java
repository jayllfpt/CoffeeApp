/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author tklin
 */
public class Account {
    private int empID;
    private String empFName;
    private String empLName;
    private String empPhone;
    private String empAddress;
    private String empStatus;
    private int shopID;
    private int roleID;
    
    public Account() {
    }

    public Account(int empID, String empFName, String empLName, String empPhone, String empAddress, String empStatus, int shopID, int roleID) {
        this.empID = empID;
        this.empFName = empFName;
        this.empLName = empLName;
        this.empPhone = empPhone;
        this.empAddress = empAddress;
        this.empStatus = empStatus;
        this.shopID = shopID;
        this.roleID = roleID;
    }

    public int getEmpID() {
        return empID;
    }

    public String getEmpFName() {
        return empFName;
    }

    public void setEmpFName(String empFName) {
        this.empFName = empFName;
    }

    public String getEmpLName() {
        return empLName;
    }

    public void setEmpLName(String empLName) {
        this.empLName = empLName;
    }

    public String getEmpPhone() {
        return empPhone;
    }

    public void setEmpPhone(String empPhone) {
        this.empPhone = empPhone;
    }

    public String getEmpAddress() {
        return empAddress;
    }

    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }

    public String getEmpStatus() {
        return empStatus;
    }

    public void setEmpStatus(String empStatus) {
        this.empStatus = empStatus;
    }

    public int getShopID() {
        return shopID;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }


    
    
    
}
