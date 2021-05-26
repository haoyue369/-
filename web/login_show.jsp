<%@ page import="com.hao.vo.login" %>
<%@ page import="com.hao.vo.Repository" %>
<%@ page import="com.hao.vo.Good" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %><%--
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
    Repository repo = (Repository) session.getAttribute("repo");
    ArrayList<Good> goodArrayList = repo.getRepo();
    Iterator<Good> giterator = goodArrayList.iterator();
    Good good = null;
%>
<table border="1">
    <tr>
        <th>名字</th>
        <th>价格</th>
        <th>库存</th>
        <th>操作</th>
    </tr>
<%
    int i = 0;
    while (giterator.hasNext()){
        good = giterator.next();
%>
<tr>
    <td><%=good.getName()%></td>
    <td><%=good.getPrice()%></td>
    <td><%=good.getCount()%></td>
<%--
    通过get方法拼接的方式可以得到对应的商品属性
   直接获取名字比较麻烦，获取索引比较方便,设置一个i用来记录
--%>
    <td><a href="add2cart.jsp?index=<%=i%>">添加</a></td>
</tr>
<%i++;}%>
</table>

<%}%>
</body>
</html>
