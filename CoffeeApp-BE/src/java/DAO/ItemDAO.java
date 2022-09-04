/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import utils.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import DTO.Item;
import java.sql.Connection;

/**
 *
 * @author tklin
 */
public class ItemDAO {

    public List<Item> getItemsByTypeID(int typeID, String key, String typekey) throws Exception {
        List<Item> list = new ArrayList<>();
        String sql = "SELECT [itemID]\n"
                + "      ,[itemName]\n"
                + "      ,[itemDescription]\n"
                + "      ,[itemPrice]\n"
                + "      ,[imgPath]\n"
                + "      ,[itemStatus]\n"
                + "      ,[itemQuantity]\n"
                + "      ,[typeID]\n"
                + "      ,[shopID]\n"
                + "  FROM [dbo].[Items]"
                + " where 1=1";
        if (typeID != 0) {
            sql += " and [typeID] = " + typeID;
        }
        if (key != null) {
            if (typekey.equals("type")) {
                sql += " and typeID in (select typeID from type where typeName like '%" + key + "%')";
            } else if (typekey.equals("item")) {
                sql += " and itemName like '%" + key + "%'";
            }
        }

        Connection cn = DBUtils.makeConnection();
            PreparedStatement st = cn.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Item i = new Item(rs.getInt("itemID"), rs.getString("itemName"), rs.getString("itemDescription"),
                        rs.getDouble("itemPrice"), rs.getString("imgPath"), rs.getString("itemStatus"),
                        rs.getString("itemQuantity"), rs.getInt("typeID"), rs.getInt("shopID"));
                list.add(i);
            }
        cn.close();
        return list;
    }

}
