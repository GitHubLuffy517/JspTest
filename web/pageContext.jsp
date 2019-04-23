<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/2
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
用户名是：<%=pageContext.getSession().getAttribute("username")%>
<%
//    跳转到注册界面
//    pageContext.forward("regist.jsp");
//    在当前位置包含另一文件
      pageContext.include("include.jsp");
%>
</body>
</html>
