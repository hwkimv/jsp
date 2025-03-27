<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 13.
  Time: 오전 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
    <h4>에러가 발생했습니다.</h4>
    <h5>exception 내장 객체 변수</h5>
    <%
        exception.printStackTrace(new java.io.PrintWriter(out));
    %>
</body>
</html>
