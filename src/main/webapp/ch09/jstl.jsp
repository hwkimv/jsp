<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 5. 1.
  Time: 오전 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<c:forEach var="item" items="${[1,2,3,4,5]}">
  <p>숫자: ${item}</p>
</c:forEach>
</body>
</html>