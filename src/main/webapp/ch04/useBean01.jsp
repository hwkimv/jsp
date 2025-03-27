<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="date" class="java.util.Date"/>
        <p><%
            out.println("오늘의 날짜 및 시각" + date);
            %>
        </p> <%=date %>

</body>
</html>
