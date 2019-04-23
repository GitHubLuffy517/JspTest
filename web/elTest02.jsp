<%@ page import="com.lxd.bean.Student" %>
<%@ page import="com.lxd.bean.School" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: 目光
  Date: 2019/3/27
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>El表达式</title>
</head>
<body>
<%
    Student stu = new Student(1, "lxd");
    School school = new School(stu);
    request.setAttribute("school", school);
    request.setAttribute("stu", stu);
%>
使用El获取对象的属性值：<br>
${requestScope.stu.name}
${requestScope.stu.id}<br>
直接用对象访问也可以：<br>
${stu.id}
${stu.name}<br>
若要访问一个对象的域属性的值，则可多次使用点号运算符，依次取出相应的属性值,student是属性，不是对象:<br>
${requestScope.school.student.name}
${requestScope.school.student.id}<br>
使用El表达式从list中取的数据：<br>
<%
    List<Student> list = new ArrayList();
    list.add(new Student(1, "lxd"));
    list.add(new Student(2, "xh"));
    request.setAttribute("list",list);
%>
${requestScope.list[1].name}<br>
使用El表达式从map中取得数据：<br>
<%
    Map<String,String> map=new HashMap<>();
    map.put("name","xh");
    map.put("password","lxd");
    request.setAttribute("map",map);
%>
${requestScope.map.name}
${requestScope.map.password}<br>
El运算符：<br>
1+1:${1+1}<br>
2>1:${2>1}<br>
2<1:${2<1}<br>
1==1:${1==1}<br>
1 or 0:${true || false}<br>
1 and 0:${true && false}<br>
! true:${!true}<br>
Empty运算符：<br>
<%
request.setAttribute("name1","");
request.setAttribute("student1",null);
request.setAttribute("list1",new ArrayList());
%>
no未定义：
${empty no}<br>
空字符串：
${empty name1}<br>
对象是null：
${empty student1}<br>
集合中没有元素：
${empty list1}<br>
</body>
</html>
