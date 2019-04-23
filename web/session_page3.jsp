<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/2
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    Date date=new Date(session.getCreationTime());
    <%--设置定时关闭方式一,单位为秒：--%>
    <%--session.setMaxInactiveInterval(5);--%>
%>
<%--默认session为30分钟--%>
session的创建时间为：<%=sdf.format(date)%><br>
session的ID为：<%=session.getId()%><br>
<a href="session_page4.jsp">跳转到session_page4</a>
</body>
</html>
