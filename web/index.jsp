<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
<%--我是jsp注释，我在客户端不可见--%>
<%--jsp声明的语法格式--%>
  <%!
  String s="张三";
  int add(int a,int b){
    return a+b;
  }
    //格式输出当前的时间
    SimpleDateFormat sd=new SimpleDateFormat("yyyy年MM月dd日");
    String d=sd.format(new Date());
  %>
<%
// jsp脚本
out.println("你好");
//里面不能写方法，因为编译的时候就是在方法里编译，不能方法里在定义方法
%>
<%--jsp表达式--%>
  你好，<%=s%>
  x+y=<%=add(10,5)%>
<%--脚本--%>
  <%

  %>
<br>
<%--jsp的表达式--%>
  今天是：<%=d%>
  </body>
</html>