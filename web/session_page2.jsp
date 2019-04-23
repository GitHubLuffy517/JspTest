<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/28
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--session的ID编号在生存期内不会改变--%>
session的ID编号：<%=session.getId()%><br>
    从session1中保存的属性有：<%
    String[] names=session.getValueNames();
    for (String a:names
         ) {
        out.println(a+"&nbsp");
    }
%>
</body>
</html>
