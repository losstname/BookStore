<%--
  Created by IntelliJ IDEA.
  User: losstname
  Date: 7/19/17
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.umrwhk.bookstore.dao.CustomerDao" %>
<%@ page import="com.umrwhk.bookstore.bean.CustomerBean" %>

<%
    CustomerBean customerBean = new CustomerBean(request.getParameter("first"),
            request.getParameter("last"),
            request.getParameter("email"),
            request.getParameter("password"),
            request.getParameter("address"),
            request.getParameter("city"));
%>
<html>
<head>
    <%@include file="head.html"%>
</head>
<body>
<%@include file="header.jsp"%>
<%  if(CustomerDao.newCustomer(customerBean)>0){ %>
    <div class="new-collections">
        <div class="container">
            <div class="typo-grids">
                <h3 data-wow-delay=".5s">Congratulations</h3>
                <p class="est animated wow zoomIn" data-wow-delay=".5s">
                    You're successfully registered.
                </p>
            </div>
        </div>
    </div>
<%  }else{ %>
    <div class="new-collections">
        <div class="container">
            <div class="typo-grids">
                <h3 data-wow-delay=".5s">We're Sorry</h3>
                <p class="est animated wow zoomIn" data-wow-delay=".5s">
                    You're not successfully registered.
                </p>
            </div>
        </div>
    </div>
<%  } %>
</body>
</html>
