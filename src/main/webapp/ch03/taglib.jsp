<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 13.
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
    <c:forEach var="k" begin="1" end="10" step="1">
        <c:out value="${k}"/>
    </c:forEach>

</body>
</html>
