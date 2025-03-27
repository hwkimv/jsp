<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <p>오늘의 날짜 및 시각</p>
    <p><%=new Date().toString()%></p>
</body>
</html>
