<%@ page import="com.hao.vo.login" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登陆失败</h1>
<%
    login u = (login)request.getAttribute("u");
%>
用户名[<%=u.getUsername()%>]或密码<%=u.getPwd()%>不对<br>
请<a href="login_demo.jsp">重新登录</a>
</body>
</html>
