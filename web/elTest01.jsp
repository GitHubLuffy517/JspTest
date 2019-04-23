<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/27
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>El表达式</title>
</head>
<body>
存储在pageContext，request，session，application中的值才可以获取,
从作用域范围小到大依次查询，
找到对应的key就停止查询。<br>
<%
    pageContext.setAttribute("name","lxdxh");
    request.setAttribute("name","xh");
    session.setAttribute("name", "lxd");
    application.setAttribute("name","xhlxd");

%>

${name}<br>
使用域属性空间相关的内置对象获取数据，可以获取特定的域属性值：<br>
${pageScope.name}
${requestScope.name}
${sessionScope.name}
${applicationScope.name}
</body>
</html>
