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
import DTO.Type;
import java.sql.Connection;

/**
 *
 * @author tklin
 */
public class TypeDAO {

    public List<Type> getAll() throws Exception {
        List<Type> list = new ArrayList<>();
        String sql = "select * from type";
        Connection cn = DBUtils.makeConnection();
        PreparedStatement st = cn.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        while (rs.next()) {
            Type t = new Type(rs.getInt("typeID"), rs.getString("typeName"));
            list.add(t);
        }
        cn.close();
        return list;
    }
}
