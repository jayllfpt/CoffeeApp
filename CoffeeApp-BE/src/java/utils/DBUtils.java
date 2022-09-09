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

    public static Connection makeConnection() throws Exception {
//        Connection cn = null;                                                                //port
//        String url = "jdbc:sqlserver://cafpthcm1.cpwiogphnkjy.ap-southeast-1.rds.amazonaws.com;databaseName=CoffeeApp";
//        String username = "cadbadmin";
//        String password = "adminCADB2002";
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        cn = DriverManager.getConnection(url, username, password);
//        return cn;

        Connection cn = null;
        String instanceName = "awseb-e-3hmpin9b2k-stack-awsebrdsdatabase-ceyzt5dzixux.cpwiogphnkjy.ap-southeast-1.rds.amazonaws.com:1433";
        String uid = "cafpthcm1";
        String pwd = "adminCADB2002";
        String db = "CoffeeApp";
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String url = "jdbc:sqlserver://" + instanceName
                + ";databasename=" + db + ";user=" + uid + ";password=" + pwd;
        Class.forName(driver);
        cn = DriverManager.getConnection(url);
        return cn;
    }
}
