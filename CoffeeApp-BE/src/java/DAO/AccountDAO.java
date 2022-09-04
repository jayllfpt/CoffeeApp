/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import DTO.Account;

/**
 *
 * @author tklin
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String shopname, String username, String password) {
        String sql = "SELECT empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, acc.shopID, roleID\n"
                + "                FROM Accounts acc FULL JOIN CoffeeShop cs\n"
                + "                ON cs.shopID = acc.shopID\n"
                + "                WHERE cs.shopName = ? \n"
                + "                AND acc.username = ? \n"
                + "                AND acc.password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, shopname);
            st.setString(2, username);
            st.setString(3, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int empID = rs.getInt("empID");
                String empFName = rs.getString("empFName");
                String empLName = rs.getString("empLName");
                String empPhone = rs.getString("empPhone");
                String empAddress = rs.getString("empAddress");
                String empStatus = rs.getString("empStatus");
                int shopID = rs.getInt("shopID");
                int roleID =  rs.getInt("roleID");
                Account acc = new Account(empID, empFName, empLName, empPhone, empAddress, empStatus, shopID, roleID);
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
