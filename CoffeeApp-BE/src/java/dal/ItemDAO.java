/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Item;

/**
 *
 * @author tklin
 */
public class ItemDAO extends DBContext {

    public List<Item> getItemsByTypeID(int typeID) {
        List<Item> list = new ArrayList<>();
        String sql = "SELECT [itemID]\n"
                + "      ,[itemName]\n"
                + "      ,[itemDescription]\n"
                + "      ,[itemPrice]\n"
                + "      ,[imgPath]\n"
                + "      ,[itemStatus]\n"
                + "      ,[itemQuantity]\n"
                + "      ,[typeID]\n"
                + "      ,[cfshopID]\n"
                + "  FROM [dbo].[Items]"
                + " where 1=1";
        if (typeID != 0) {
            sql += " and [typeID] = " + typeID;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Item i = new Item(rs.getInt("itemID"), rs.getString("itemName"), rs.getString("itemDescription"),
                        rs.getDouble("itemPrice"), rs.getString("imgPath"), rs.getString("itemStatus"),
                        rs.getString("itemQuantity"), rs.getInt("typeID"), rs.getInt("cfshopID"));
                list.add(i);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
