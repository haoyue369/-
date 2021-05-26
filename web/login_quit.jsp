<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("login_demo.jsp");
%>
</body>
</html>
