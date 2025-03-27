<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>

<html>
<head>
    <title>도서 목록</title>
    <!-- ✅ Bootstrap CDN 링크 오타 수정 (https;) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-4">
    <%@ include file="menu.jsp" %>

    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
        <div class="container-fluid py-5">
            <h1 class="display-5 fw-bold">도서목록</h1>
            <p class="col-md-8 fs-4">BookList</p>
        </div>
    </div>

    <%
        ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
    %>

    <div class="row align-items-md-stretch text-center">
        <% for (Book book : listOfBooks) { %>
        <div class="col-md-4 mb-4">
            <div class="h-100 p-3 border rounded shadow-sm">
                <h5><b><%= book.getName() %></b></h5>
                <p><%= book.getAuthor() %></p>
                <p><%= book.getPublisher() %> | <%= book.getReleaseDate() %></p>

                <%-- ✅ 설명글이 60자 이상일 때만 substring 사용 --%>
                <%
                    String desc = book.getDescription();
                    String shortDesc = desc.length() > 60 ? desc.substring(0, 60) + "..." : desc;
                %>
                <p><%= shortDesc %></p>

                <p><b><%= book.getUnitPrice() %>원</b></p>

                <%-- ✅ 링크 파라미터 수정: ?id → ?bookId --%>
                <a href="./book.jsp?bookId=<%= book.getBookId() %>" class="btn btn-secondary" role="button">
                    상세 정보 &raquo;
                </a>
            </div>
        </div>
        <% } %>
    </div>

    <jsp:include page="footer.jsp" />
</div>
</body>
</html>
