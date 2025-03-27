<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 20.
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"/>
    <jsp:setProperty name="person" property="id" value="2023824"/>
    <jsp:setProperty name="person" property="name" value="홍길동"/>
    <p>아이디 : <%out.println(person.getId());%></p>
    <p>이름 : <%out.println(person.getName());%></p>
</body>
</html>
