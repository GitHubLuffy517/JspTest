<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/28
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=utf-8");
    out.println("<h1>response内置对象</h1>");
    //out.flush();
    out.println("<hr>");
    PrintWriter outer=response.getWriter();
    //输出流对象会在前面输出，可以用flush方法输出缓冲区，会提前输出out内置对象
    outer.println("大家好，我是response生成的输出流outer对象");
    //重定向,要注释掉flush，不然会抛出异常
     //response.sendRedirect("regist.jsp");
//    请求转发与请求重定向的区别
    //请求重定向，地址栏的URL会发生变化，对象不会保存
    //response.sendRedirect("request.jsp");
    //请求转发，地址栏的URL不会发生变化，对象会保存
    request.getRequestDispatcher("request.jsp").forward(request,response);

%>
