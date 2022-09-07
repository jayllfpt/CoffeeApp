/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBUtils {
//    public static Connection connection;
//    public DBUtils()
//    {
//        try {
//            // Edit URL , username, password to authenticate with your MS SQL Server
//            String url = "jdbc:sqlserver://cafpthcm.database.windows.net;databaseName=CoffeeApp";
//            String username = "cadbadmin";
//            String password = "adminCADB2002";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, username, password);
//        } catch (ClassNotFoundException | SQLException ex) {
//            System.out.println(ex);
//        }
//    }
    
        public static Connection makeConnection() throws Exception{
            Connection cn= null;                                                                //port
            String url = "jdbc:sqlserver://cafpthcm.clfv7tuyvf5x.ap-northeast-1.rds.amazonaws.com:1433;databaseName=CoffeeApp";
            String username = "cadbadmin";
            String password = "adminCADB2002";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn = DriverManager.getConnection(url, username, password);
            return cn;
        }
}