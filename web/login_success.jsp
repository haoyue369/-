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
<h1>登陆成功</h1>
<%
    login u = (login) request.getAttribute("u");
    if (null!=u){
%>
welcome<%=u.getUsername()%> to HangZhou
<%}else {%>
你还未登录，请先<a href="login_demo.jsp">登录</a>
<%}%>
</body>
</html>
