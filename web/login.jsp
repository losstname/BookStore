<%--
  Created by IntelliJ IDEA.
  User: losstname
  Date: 6/25/17
  Time: 10:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.html"%>
</head>
<body>
    <%@include file="header.jsp"%>
    <!-- //breadcrumbs -->
    <!-- login -->
    <div class="login">
        <div class="container">
            <h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
            <p class="est animated wow zoomIn" data-wow-delay=".5s">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                deserunt mollit anim id est laborum.</p>
            <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                <form class="animated wow slideInUp" data-wow-delay=".5s" action="loginprocess.jsp" method="post">
                    <input type="email" placeholder="Email Address" required=" " name="email" id="email">
                    <input type="password" placeholder="Password" required=" " name="password" id="password">
                    <input type="submit" value="Login">
                </form>
            </div>
            <h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
            <p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register.jsp">Register Here</a> (Or) go back to <a href="index.html">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
        </div>
    </div>
    <!-- //login -->
    <%@include file="footer.html"%>
</body>
</html>
