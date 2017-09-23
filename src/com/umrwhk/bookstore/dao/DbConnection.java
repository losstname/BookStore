package com.umrwhk.bookstore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by losstname on 6/27/17.
 */
public class DbConnection {
    public static Connection getConn(){
        Connection conn = null;
        final String DB_URL = "jdbc:mysql://localhost:3306/bookstore",
                USER = "root",
                PASS = "root";
        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
