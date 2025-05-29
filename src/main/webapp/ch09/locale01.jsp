<%@ page import="java.util.Locale" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 5. 8.
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>현재 로케일의 국가, 날짜, 통화</h3>
    <%
        Locale locale = request.getLocale();
        Date currentDate = new Date();
        DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG, locale);
        NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
    %>
    <p>국가 : <%=locale.getDisplayCountry()%></p>
    <p>언어 : <%=locale.getDisplayLanguage()%></p>
    <p>숫자(12345.67) : <%=numberFormat.format(12345.67)%>
</body>
</html>
