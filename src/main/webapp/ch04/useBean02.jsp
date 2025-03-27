<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
<jsp:useBean id="bean" class="ch04.com.dao.Calculator"/>
<%
    int m = bean.process(5);
    out.println("5의 제곱은 " + m);
%>

</body>
</html>
