<%@ page import="com.umrwhk.bookstore.dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: losstname
  Date: 7/31/17
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    boolean login = CustomerDao.customerLogin(request.getParameter("email"),request.getParameter("password"));
    if(login){
        session.setAttribute("login", true);
        session.setAttribute("email", request.getParameter("email"));
        response.sendRedirect("./");
    }else{
        response.sendRedirect("./login.jsp");
    }
%>
