<%@ page import="java.util.*" %>
<%@ page import="com.lxd.bean.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/27
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL核心标签</title>
</head>
<body>
<%
    pageContext.setAttribute("user", "admin");
%>
EL表达式获取：<br>
${user}<br>
c:out标签获取：<c:out value="${user}"></c:out><br>

c:catch捕获错误：<c:catch var="e">
    ${pageContext.name}
</c:catch>
错误信息：${e.message}<br>

c:if标签：<c:if test="${user=='admin'}" var="flag">
    欢迎登陆
    ${flag}
</c:if>
<br>
c:choose标签:
<%
    pageContext.setAttribute("hobby", "basketball");
%>
<c:choose>
    <c:when test="${hobby=='basketball'}">
        我喜欢篮球
    </c:when>
    <c:when test="">

    </c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>
<br>

c:froeach标签：
<%
    Object[] objects = {"luffy", 123, "suolong","178","456","lxdxh","lxd"};
    pageContext.setAttribute("objects", objects);

    List list=new ArrayList();
    list.add("lxd");
    list.add("xh");
    pageContext.setAttribute("list",list);

    Set set=new HashSet();
    set.add("123");
    set.add("456");
    set.add("789");
    pageContext.setAttribute("set",set);

    Map<String,String> map=new HashMap<>();
    map.put("第一","中国");
    map.put("第二","美国");
    pageContext.setAttribute("map",map);

    List<Student> stulist=new ArrayList<>();
    stulist.add(new Student(88,"马云"));
    stulist.add(new Student(89,"雷军 "));
    stulist.add(new Student(90,"马化腾"));
    stulist.add(new Student(91,"李彦宏"));
    stulist.add(new Student(92,"廖祥栋"));
    pageContext.setAttribute("stulist",stulist);
%>
<br>
数组：
<c:forEach items="${objects}" var="o">
    ${o}
</c:forEach>
<br>
List：
<c:forEach items="${list}" var="l">
    ${l}
</c:forEach>
<br>
Set:
<c:forEach items="${set}" var="s">
    ${s}
</c:forEach>
<br>
Map:
<c:forEach items="${map}" var="m">
    ${m.key}:${m.value}
</c:forEach>
<br>
指定遍历的起始索引即步长1：
<c:forEach items="${objects}" begin="1" end="3" var="o">
    ${o}
</c:forEach>
<br>
指定遍历的起始索引即步长2：
<c:forEach items="${objects}" step="2" var="o">
    ${o}
</c:forEach>
<br>
动态显示行数varStatus与隔行着色：
    <table border="1">
        <tr>
            <td>序号</td>
            <td>ID</td>
            <td>姓名</td>
        </tr>
        <c:forEach items="${stulist}" var="sl" varStatus="obj">
            <%--隔行着色代码，用EL表达式来赋颜色值--%>
        <tr style="background-color: ${obj.index%2==0?'orange':'white'}">
            <td>${obj.count}</td>
            <td>${sl.id}</td>
            <td>${sl.name}</td>
        </tr>
        </c:forEach>
    </table>

</body>
</html>
