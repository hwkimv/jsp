<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 13.
  Time: 오전 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scripting Tag</title>
</head>
<body>
    <%! int sum(int a, int b) {
        return a + b;
    } %>
    <%
        out.println("2 + 3 = " + sum(2, 3));
    %>

</body>
</html>
