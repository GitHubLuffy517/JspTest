<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/2/27
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆测试</title>
</head>
<body>
<%--用get地址栏中会显示用户名与密码，用post不会，get一般适用搜索，post一般适用登陆注册等操作--%>
    <form action="dologin.jsp" name="loginForm" method="get">
        <table>
            <%--tr*2>td*2+tab--%>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username" ></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="登陆" ></td>
                </tr>
        </table>

    </form>
</body>
</html>
