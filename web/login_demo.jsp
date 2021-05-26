<%@ page import="com.hao.vo.login" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    login user = (login) session.getAttribute("user");
    if (null == user){
%>
<form action="login_handle.jsp" method="post">
    用户名：<input type="text" name="username"><br>
    密&nbsp;码：<input type="password"name="password"><br>
    <input type="submit" value="提交">
<%}else {%>
你已经登陆了：<br>
用户名：<%=user.getUsername()%><br>
密&nbsp;码：<%=user.getPwd()%><br>
    <a href="login_show.jsp">商品列表</a>
    <a href="login_quit.jsp">退出登录</a>
<%}%>
</form>
</body>
</html>
