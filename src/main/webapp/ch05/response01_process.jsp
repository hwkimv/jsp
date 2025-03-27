<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 27.
  Time: 오전 10:18
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
        String passwd = request.getParameter("passwd");

        if (userid.equals("관리자") && passwd.equals("1234")) {
            response.sendRedirect("response01_success.jsp");
        } else {
            response.sendRedirect("response01_failed.jsp");
        }
    %>
</body>
</html>
