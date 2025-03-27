<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <p>아이디 : <%=request.getParameter("id")%></p>
    <%
        String name = request.getParameter("name");
    %>
    <p>이름: <%=java.net.URLDecoder.decode(name)%></p>
</body>
</html>
