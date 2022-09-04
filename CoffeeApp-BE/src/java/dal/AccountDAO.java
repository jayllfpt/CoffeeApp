/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author tklin
 */
public class AccountDAO extends DBContext {

    public Account getAccount(String shopname, String username, String password) {
        String sql = "SELECT empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, acc.cfshopID, roleID \n"
                + "FROM Accounts acc FULL JOIN CoffeeShop cs\n"
                + "ON cs.cfshopID = acc.cfshopID\n"
                + "WHERE cs.cfshopName = ? "
                + "AND acc.username = ? "
                + "AND acc.password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, shopname);
            st.setString(2, username);
            st.setString(3, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account acc = new Account(rs.getInt("empID"), rs.getString("empFName"), rs.getString("empLName"), rs.getString("empPhone"), rs.getString("empAddress"), rs.getString("empStatus"), rs.getInt("cfshopID"), rs.getInt("roleID"));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

}
