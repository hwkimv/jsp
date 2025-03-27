<%@ page import="static jdk.javadoc.internal.doclets.formats.html.markup.HtmlStyle.title" %><%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <%
    String name = request.getParameter("title");
    %>
    <h3><%=java.net.URLDecoder.decode(title)%></h3>
    Today is :<%= request.getParameter("date")%>


</body>
</html>
