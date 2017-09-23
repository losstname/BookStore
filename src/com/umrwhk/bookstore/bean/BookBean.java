package com.umrwhk.bookstore.bean;

/**
 * Created by losstname on 6/27/17.
 */
public class BookBean {
    private int bookId,
        price,
        reorder,
        stock;
    private String title,
        author;

    public BookBean(){
        super();
    }

    public BookBean(String title, String author, int price, int reorder, int stock){
        this.title = title;
        this.author = author;
        this.price = price;
        this.reorder = reorder;
        this.stock = stock;
    }

    public String getTitle(){
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getBookId() {
        return bookId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getReorder() {
        return reorder;
    }

    public void setReorder(int reorder) {
        this.reorder = reorder;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
