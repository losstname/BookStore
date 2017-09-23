package com.umrwhk.bookstore.dao;

import com.umrwhk.bookstore.bean.BookBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by losstname on 6/27/17.
 */
public class BookDao {

    public int addBook(BookBean bookBean){
        Connection connection = DbConnection.getConn();
        int result=0;
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO tbl_book (title,author,price,reorder,stock) VALUES (?,?,?,?,?)");
            statement.setString(1,bookBean.getTitle());
            statement.setString(2,bookBean.getAuthor());
            statement.setInt(3,bookBean.getPrice());
            statement.setInt(4,bookBean.getReorder());
            statement.setInt(5,bookBean.getStock());
            result = statement.executeUpdate();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public int editBook(BookBean bookBean){
        Connection connection = DbConnection.getConn();
        int result = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE tbl_book set title=?,author=?,price=?,reorder=?,stock=? WHERE bookid=?");
            statement.setString(1,bookBean.getTitle());
            statement.setString(2,bookBean.getAuthor());
            statement.setInt(3,bookBean.getPrice());
            statement.setInt(4,bookBean.getReorder());
            statement.setInt(5,bookBean.getStock());
            statement.setInt(6,bookBean.getBookId());
            result = statement.executeUpdate();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }


}
