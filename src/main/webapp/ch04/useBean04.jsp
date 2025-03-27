<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
    <p>아이디 : <%=person.getId()%></p>
    <p>이름: <%=person.getName()%></p>
    <%
        person.setId(2023824);
        person.setName("홍길동");
    %>
    <jsp:include page="useBean03.jsp"/>

</body>
</html>
