<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/26
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--可以采用这种方式来报错，不将错误信息暴露给用户，提高安全性--%>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    System.out.println(10 / 0);

%>
</body>
</html>
