<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 13.
  Time: 오전 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scripting Tag</title>
</head>
<body>
<%
   for (int i = 0; i < 10; i++) {
       if (i % 2 == 0)
           out.println(i + "<br>");
   }
%>

</body>
</html>
