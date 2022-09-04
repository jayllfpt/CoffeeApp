/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Account;
import DTO.Shop;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtils;

/**
 *
 * @author SEAL
 */
public class ShopDAO {

    public static Shop getShop(String shopname) throws Exception{
        String sql = "SELECT [shopID],[shopName],[shopAddress],[shopPhone],[shopStatus]\n"
                + "FROM Shop\n"
                + "WHERE shopName = ?";
        Connection cn = DBUtils.makeConnection();
            PreparedStatement st = cn.prepareStatement(sql);
            st.setString(1, shopname);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                int shopID = rs.getInt("shopID");
                String shopName = rs.getString("shopName");
                String shopAddress = rs.getString("shopAddress");
                String shopPhone = rs.getString("shopPhone");
                String shopStatus = rs.getString("shopStatus");
                Shop shop = new Shop(shopID, shopName, shopAddress, shopPhone, shopStatus);
                cn.close();
                return shop;
            }
        cn.close();
        return null;
    }
}
