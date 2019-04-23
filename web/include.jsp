<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/2
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
    Date date=new Date();
    String s=sdf.format(date);
    out.print(s+"<br>");
%>
