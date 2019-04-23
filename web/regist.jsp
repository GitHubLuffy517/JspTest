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
<h1>注册测试</h1>
<form action="response.jsp" name="regForm" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" ></td>
        </tr>
        <tr>
            <td>爱好：</td>
            <td><input type="checkbox" name="love" value="music">音乐
                <input type="checkbox" name="love" value="movie">电影
                <input type="checkbox" name="love" value="game">游戏
                <input type="checkbox" name="love" value="read">读书
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交"></td>

        </tr>
    </table>
</form>
<%--直接传值会有空指针异常，需要添加if条件判断--%>
<a href="request.jsp?username=张三">采用URL传值</a>
</body>
</html>
