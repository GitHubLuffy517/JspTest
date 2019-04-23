<%@ taglib prefix="lxdfunction" uri="http://mycompany.com" %>
<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/27
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>El表达式内置对象</title>
</head>
<body>
获取对象与对象的路径：
${pageContext.request}<br>
${pageContext.request.contextPath}<br>
获取URL的单个传值：<br>
<a href="elTest03.jsp?name=zhangsan">点击传值</a><br>
${param.name}
获取多个值：<br>
<a href="elTest03.jsp?hobby=basketball&hobby=football">点击传值</a><br>
${paramValues.hobby[0]}
${paramValues.hobby[1]}<br>
获取在xml中的预设值：<br>
${initParam.admin}<br>
<%--新建一个tld文件，写一个function，把函数的类加进去，在jsp中导入标签库（写好函数后idea提示导入），就可以使用--%>
自定义el函数实现小写转换为大写：<br>
${lxdfunction:toUpper("lxd517")}
</body>
</html>
