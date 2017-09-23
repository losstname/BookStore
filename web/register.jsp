<%--
  Created by IntelliJ IDEA.
  User: losstname
  Date: 6/25/17
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.html"%>
</head>
<body>
    <%@include file="header.jsp"%>
    <!-- breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                <li><a href="./"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
                <li class="active">Register Page</li>
            </ol>
        </div>
    </div>
    <!-- //breadcrumbs -->
    <!-- register -->
    <div class="register">
        <div class="container">
            <h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
            <div class="login-form-grids">
                <h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
                <form class="animated wow slideInUp" data-wow-delay=".5s" action="registerprocess.jsp" method="post">
                    <input type="text" placeholder="First Name" required=" " id="first" name="first">
                    <input type="text" placeholder="Last Name" required=" " id="last" name="last">
                    <input type="email" placeholder="Email Address" required=" " name="email" id="email">
                    <input type="password" placeholder="Password" required=" " name="password" id="password">
                    <input type="password" placeholder="Password Confirmation" onchange="passwordConfirm()" name="password1" id="password1" required=" " >
                    <input type="text" placeholder="Address" required=" " id="address" name="address" >
                    <input type="text" placeholder="City" required=" " id="city" name="city">
                    <label class="checkbox"><input type="checkbox" name="tac" id="tac" required=""><i> </i>I accept the terms and conditions</label>
                    <input type="submit" value="Register">
                </form>
            </div>
            <div class="register-home animated wow slideInUp" data-wow-delay=".5s">
                <a href="./">Home</a>
            </div>
        </div>
    </div>
    <!-- //register -->
    <%@include file="footer.html"%>
    <script>
        function passwordConfirm() {
            if ($("#password").val() != $("#password1").val()){
                alert("password doesn't match");
            }
        }
    </script>
</body>
</html>
