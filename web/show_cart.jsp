<%@ page import="com.hao.vo.login" %>
<%@ page import="com.hao.vo.Repository" %>
<%@ page import="com.hao.vo.Good" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.hao.vo.Cart" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 20:30
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
请<a href="login_demo.jsp">重新登录</a>
<%}else {%>
尊敬的<%=user.getUsername()%>,你可以看看我的[<a href="show_cart.jsp"></a>]
<%
    Cart repo = (Cart) session.getAttribute("cart");
    ArrayList<Good> goodArrayList = repo.getCart();
    Iterator<Good> giterator = goodArrayList.iterator();
    Good good = null;
%>
<table border="1">
    <tr>
        <th>名字</th>
        <th>价格</th>
        <th>库存</th>
    </tr>
<%
    while (giterator.hasNext()){
        good = giterator.next();
%>
<tr>
    <td><%=good.getName()%></td>
    <td><%=good.getPrice()%></td>
    <td><%=good.getCount()%></td>
</tr>
<%}%>
</table>

<%}%>
</body>
</html>
