<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/27
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out对象的方法</title>
</head>
<body>
<h1>静夜思</h1>
<%
    out.print("窗前明月光<br>");
    out.print("疑是地上霜<br>");
//输出缓冲区
    out.flush();
//放在flush后会抛出异常
//out.clear();
//它不会
    out.clearBuffer();
    out.print("举头望明月<br>");
    out.print("低头思故乡<br>");

%>
缓冲区的大小：<%=out.getBufferSize()%>byte<br>
缓冲区剩余大小：<%=out.getRemaining()%>byte<br>
是否自动清空：<%=out.isAutoFlush()%>
</body>
</html>
