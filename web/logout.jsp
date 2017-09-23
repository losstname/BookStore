<%--
  Created by IntelliJ IDEA.
  User: losstname
  Date: 7/31/17
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  request.getSession().invalidate();
    response.sendRedirect("./");
%>
