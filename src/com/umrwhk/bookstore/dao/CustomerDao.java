package com.umrwhk.bookstore.dao;

import com.umrwhk.bookstore.bean.CustomerBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by losstname on 6/27/17.
 */
public class CustomerDao {
    public static int newCustomer(CustomerBean customerBean){
        Connection connection = DbConnection.getConn();
        int result = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO tbl_customer (firstname,lastname,email,pass,address,city) VALUES (?,?,?,?,?,?)");
            statement.setString(1,customerBean.getFirstName());
            statement.setString(2,customerBean.getLastName());
            statement.setString(3,customerBean.getEmail());
            statement.setString(4,customerBean.getPassword());
            statement.setString(5,customerBean.getAddress());
            statement.setString(6,customerBean.getCity());
            result = statement.executeUpdate();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public static boolean customerLogin(String email, String password){
        boolean login = false;
        ResultSet result;
        Connection connection = DbConnection.getConn();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM tbl_customer WHERE email=? AND pass=?");
            statement.setString(1, email);
            statement.setString(2, password);
            result = statement.executeQuery();
            if(result.next()){
                login = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return login;
    }

}
