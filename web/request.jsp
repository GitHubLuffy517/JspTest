<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/27
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");//解决中文乱码问题，但是不能解决用URL传值的乱码，得在server.xml文件中添加代码
    request.setAttribute("password","123456");
%>

<%--获取字符串值--%>
用户名：<%=request.getParameter("username")%>
爱好：
<%
    //添加判断条件，不然会有空指针异常
    //获取数组
    if(request.getParameterValues("love")!=null){
        String loves[]=request.getParameterValues("love");
        for (String x:loves ) {
            out.print(x+"&nbsp");
        }
    }
%>
<%--request的其他方法--%>
密码：<%=request.getAttribute("password")%><br>
请求的MIME类型：<%=request.getContentType()%><br>
协议类型及版本号：<%=request.getProtocol()%><br>
服务器主机名：<%=request.getServerName()%><br>
服务器端口号：<%=request.getServerPort()%><br>
请求文件长度：<%=request.getContentLength()%><br>
请求客户端的IP地址：<%=request.getRemoteAddr()%><br>
请求真实路径：<%=request.getRealPath("request.jsp")%><br>
请求的上下文路径：<%=request.getContextPath()%><br>
</body>
</html>
