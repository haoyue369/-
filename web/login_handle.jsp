<%@ page import="com.hao.vo.login" %>
<%@ page import="com.hao.vo.Repository" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hao.vo.Good" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/5/23
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
//在控制台打印出来看看
    System.out.println(username+"----"+password);
    login u = new login(username,password);
    if ("hao".equals(u.getUsername())&&"123456".equals(u.getPwd())){
        request.setAttribute("u",u);
        session.setAttribute("user",u);
        /*
        居然还是一个双层的集合
        先生成一个商品集合
        然后库存集合
        再把商品集合放在库存集合中
         */
        Repository repo = new Repository();
        ArrayList<Good> goodList = new ArrayList<>();
        Good g = null;
        for (int i = 0; i < 100; i++) {
            g = new Good();
            g.setName("good"+i);
            g.setPrice(10);
            g.setCount(100);
            goodList.add(g);
        }
        repo.setRepo(goodList);
        session.setAttribute("repo",repo);
        response.sendRedirect("login_show.jsp");
//        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }else {
        request.setAttribute("u",u);
        request.getRequestDispatcher("login_fail.jsp").forward(request,response);
    }
%>

