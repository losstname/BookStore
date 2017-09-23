package com.umrwhk.bookstore.bean;

/**
 * Created by losstname on 6/27/17.
 */
public class CustomerBean {
    private String firstName,
        lastName,
        email,
        password,
        address,
        city;
    private int customerId;

    public CustomerBean(){
        super();
    }

    public CustomerBean(String firstName, String lastName, String email, String password, String address, String city){
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.address = address;
        this.city = city;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public int getCustomerId() {
        return customerId;
    }
}
