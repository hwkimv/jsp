<%--
  Created by IntelliJ IDEA.
  User: hwkim
  Date: 25. 3. 27.
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>도서 정보</title>
</head>
<body>
    <div class="container py-4">
        <%@ include file="menu.jsp" %>
        <div class="p-5 mb-4 bg-body-tertiary rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold">도서정보</h1>
                <p class="col-md-8 fs-4">BookInfo</p>
            </div>
        </div>
    <%
    String id = request.getParameter("bookId");
    BookRepository dao = BookRepository.getInstance();
    Book book = dao.getBookById(id);
%>

<% if (book != null) { %>
    <div class="row align-items-md-stretch">
        <div class="col-md-12">
            <h3><b><%= book.getName() %></b></h3>
            <p><%= book.getDescription() %></p>
            <p><b>도서코드 : </b><span class="badge text-bg-danger"><%= book.getBookId() %></span></p>
            <p><b>저자</b> : <%= book.getAuthor() %></p>
            <p><b>출판사</b> : <%= book.getPublisher() %></p>
            <p><b>출판일</b> : <%= book.getReleaseDate() %></p>
            <p><b>분류</b> : <%= book.getCategory() %></p>
            <p><b>재고수</b> : <%= book.getUnitsInStock() %></p>
            <h4><%= book.getUnitPrice() %>원</h4>
            <p>
            <a href="#" class="btn btn-info">도서주문 &raquo;</a>
            <a href="./books.jsp" class="btn btn-secondary">도서 목록 &raquo;</a>
            </p>
        </div>
    </div>
<% } else { %>
    <p>해당 도서를 찾을 수 없습니다.</p>
<% } %>
    <jsp:include page="footer.jsp" />
</body>
</html>
