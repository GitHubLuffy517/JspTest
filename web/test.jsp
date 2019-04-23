<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/27
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<%--第一种方法，使用jsp表达式--%>
<%!

String printMutiTable(){
    String s="";
    for(int i=1;i<=9;i++){
        for(int j=1;j<=i;j++){
            s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp";
        }
        s+="<br>";
    }
    return s;
}
//在jsp中输出要用JSPWriter的out对象来输出
    void mutiTable(JspWriter out) throws Exception{
    for(int i=1;i<=9;i++){
        for(int j=1;j<=i;j++){
            //在jsp中输出空格要用&nbsp
            out.print(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp");
        }
        //输出换行要用<br>
        out.println("<br>");
    }
    }
%>
<%--不用加分号--%>
<%=printMutiTable()%>
<%--第二种方法，使用脚本输出，要以分号结束--%>
<%
    mutiTable(out);
%>
</body>
</html>
