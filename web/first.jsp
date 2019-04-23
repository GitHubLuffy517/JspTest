<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/26
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Date date = new Date();
    out.println(date.toLocaleString());
%>
</body>
</html>
