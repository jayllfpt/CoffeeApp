/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import DTO.Type;

/**
 *
 * @author tklin
 */
public class TypeDAO extends DBContext{
    public List<Type> getAll(){
        List<Type> list = new ArrayList<>();
        String sql = "select * from type";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Type t = new Type(rs.getInt("typeID"), rs.getString("typeName"));
                list.add(t);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }       
        return list;
    }
}
