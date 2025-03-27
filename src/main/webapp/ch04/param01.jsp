<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <h3>param 액션 태그</h3>
    <jsp:forward page="param01_data.jsp">
        <jsp:param name="id" value="admin"/>
        <jsp:param name="name" value="<%=java.net.URLEncoder.encode("관리자")%>"/>
    </jsp:forward>
    <p> Jakarta Server Page</p>
</body>
</html>
