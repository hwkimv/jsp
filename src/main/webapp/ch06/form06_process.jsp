<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
    <title>Form Processing</title>
</head>
<body>
<table border="1">
    <tr>
        <th>요청 파라미터 이름</th>
        <th>요청 파라미터 값</th>
    </tr>
    <%
        request.setCharacterEncoding("UTF-8");

        Enumeration<String> paramNames = request.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String name = (String) paramNames.nextElement();
            out.print("<tr><td>" + name + "</td>\n");

            String[] values = request.getParameterValues(name);
            out.print("<td>");
            if (values != null) {
                for (int i = 0; i < values.length; i++) {
                    out.print(values[i]);
                    if (i < values.length - 1) {
                        out.print(", ");
                    }
                }
            } else {
                out.print("없음");
            }
            out.println("</td></tr>");
        }
    %>
</table>
</body>
</html>
