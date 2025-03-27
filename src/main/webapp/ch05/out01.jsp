<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 27.
  Time: 오전 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Object</title>
</head>
<body>
  <%
    out.println("오늘의 날짜 및 시각" + "<br>");
    out.println(java.util.Calendar.getInstance().getTime());
  %>
</body>
</html>
