<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/26
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>

<%--设置为errorPage后才可以使用exception对象--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
页面发生错误，请联系管理员
<%
exception.printStackTrace();
%>
</body>
</html>
