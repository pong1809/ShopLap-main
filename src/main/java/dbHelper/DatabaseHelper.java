/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dbHelper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author LeeJaeLee
 */
public class DatabaseHelper {
    public static Connection getConnection() throws Exception{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        String url = "jdbc:sqlserver://localhost:1433;databaseName=shopLaptop";
        String url = "jdbc:sqlserver://ADMIN\\BTL:1433;databaseName=shopLaptop;trustServerCertificate=true;";
        String user = "sa";
        String pass = "123456";
        Connection con = DriverManager.getConnection(url, user, pass);
        return con;
    }
}
