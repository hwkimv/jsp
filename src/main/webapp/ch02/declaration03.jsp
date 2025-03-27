<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 13.
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scripting Tag</title>
</head>
<body>
    <%! String makeItLower(String data) {
        return data.toLowerCase();
    } %>
    <%
        out.println(makeItLower("Hello World"));
    %>
</body>
</html>
