<%@ page import="com.hao.vo.Cart" %>
<%@ page import="com.hao.vo.Good" %>
<%@ page import="com.hao.vo.Repository" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int index = Integer.parseInt(request.getParameter("index"));
    Repository repo = (Repository) session.getAttribute("repo");
    Good g = repo.getRepo().get(index);
    Object obj = session.getAttribute("cart");
    if (null == obj){
        Cart c = new Cart();
        session.setAttribute("cart",c);
    }else {
        Cart c = (Cart) obj;
        c.getCart().add(g);
        g.setCount(g.getCount()-1);
    }
    response.sendRedirect("login_show.jsp");

%>

</body>
</html>
