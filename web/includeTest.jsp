<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/26
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%--静态引入--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%--<%@include file="one.jsp"%>--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--测试动态引入与静态引入--%>

<%--静态引入变量不能重名,会报错，如下--%>
<%--<%--%>
<%--int test=888;--%>
<%--%>--%>

<%--动态引入,重复的变量不会报错--%>
<%
int test=888;
%>
<jsp:include page="one.jsp"></jsp:include>
本jsp中的test值：<%=test%>
</body>
</html>
