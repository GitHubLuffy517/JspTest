<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/2
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//  application开始于服务器的启动，终止与服务器的关闭
//  两个参数，第一个为字符串String类型，第二个为保存的值
    application.setAttribute("city","北京");
    application.setAttribute("name","张三");
    application.setAttribute("phone","1888888");
%>
所在城市是：<%=application.getAttribute("city")%><br>
JSP(servlet)引擎名及版本号：<%=application.getServerInfo()%><br>
application中的属性有：<%
//  获取的是枚举类型
    Enumeration attributes=application.getAttributeNames();
    while(attributes.hasMoreElements()){
        out.print(attributes.nextElement()+"&nbsp;&nbsp");
    }
%>
</body>
</html>
