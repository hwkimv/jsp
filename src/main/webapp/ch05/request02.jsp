<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 27.
  Time: 오전 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Object</title>
</head>
<body>
    <%
        Enumeration en = request.getHeaderNames();
        while(en.hasMoreElements()) {
            String headerName = (String)en.nextElement();
            String headerValue = request.getHeader(headerName);
    %>
    <%=headerName%> : <%=headerValue%><br>
    <%
        }
    %>

</body>
</html>
