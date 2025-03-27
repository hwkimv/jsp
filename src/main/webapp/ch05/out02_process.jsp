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
        request.setCharacterEncoding("UTF-8");
        String userid = request.getParameter("id");
        String password = request.getParameter("passwd");
    %>
    <p>아이디 : <% out.println(userid); %></p>
    <p>비밀번호 : <% out.println(password); %>%></p>
</body>
</html>
