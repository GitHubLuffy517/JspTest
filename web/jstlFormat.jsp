<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/28
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jstl格式化标签</title>
</head>
<body>
<%
    Date date = new Date();
    pageContext.setAttribute("date", date);
%>
<br>----------------格式化日期---------------<br>
直接显示：<br>
<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
<br>

<fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss" var="date"></fmt:formatDate>
保存在变量中显示：<br>
${date}
<br>
<br>----------------将字符串转换为日期---------------<br>
<%
    String dateStr = "2019-3-28";
    pageContext.setAttribute("dateStr", dateStr);
%>
<fmt:parseDate value="${dateStr}" ></fmt:parseDate>
</body>
</html>
