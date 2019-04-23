<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/28
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>session内置对象</h1>
<%--session的常用方法--%>
<%
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date date=new Date(session.getCreationTime());
    session.setAttribute("username","张三");
    session.setAttribute("pwd","123456");
    session.setAttribute("age","18");
    //设置当前session最大生存时间,到时见后生存周期就结束。会话保存在服务器的内存中
   // session.setMaxInactiveInterval(5);
%>
    session创建时间为：<%=sdf.format(date)%><br>
    session的ID编号：<%=session.getId()%><br>
    从Session中获取用户名：<%=session.getAttribute("username")%><br>
    <a href="session_page2.jsp" target="_blank">跳转到第二个界面</a>
</body>
</html>
