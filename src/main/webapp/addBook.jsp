<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" charset="UTF-8">
  <script type="text/javascript" src="./resources/js/validation.js"></script>
  <title>도서 등록</title>
</head>
<body>
<fmt:setLocale value= "${param.language}" />
<fmt:setBundle basename="bundle.message" />
<div class="container py-4">
  <%@ include file="menu.jsp" %>

  <div class="p-5 mb-4 bg-body-tertiary rounded-3">
    <div class="container-fluid py-5">
      <h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
      <p class="col-md-8 fs-4">Book Addition</p>
    </div>
  </div>

  <div class="row align-items-md-stretch">
    <div class="text-end">
      <a href="?language=ko">Korean</a> | <a href="?language=en">English </a>
      <a href="logout.jsp" class="btn btn-sm btn-success pull right">logout</a>
    </div>
    <form name="newBook" action="/books/add" method="post" enctype="multipart/form-data">

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="bookId"/></label>
        <div class="col-sm-3">
          <input type="text" id="bookId" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="name"/></label>
        <div class="col-sm-3">
          <input type="text" id="name" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="unitPrice"/></label>
        <div class="col-sm-3">
          <input type="text" id="unitPrice" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="author"/></label>
        <div class="col-sm-3">
          <input type="text" name="author" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="publisher"/></label>
        <div class="col-sm-3">
          <input type="text" name="publisher" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="releaseDate"/></label>
        <div class="col-sm-3">
          <input type="text" name="releaseDate" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="description"/></label>
        <div class="col-sm-5">
          <textarea name="description" cols="50" rows="2" class="form-control" placeholder="100자 이상 적어주세요"></textarea>
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="category"/></label>
        <div class="col-sm-3">
          <input type="text" name="category" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
        <div class="col-sm-3">
          <input type="text" id="unitsInStock" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2">상태</label>
        <div class="col-sm-5">
          <input type="radio" name="condition" value="New"> <fmt:message key="condition_New"/>
          <input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old"/>
          <input type="radio" name="condition" value="EBook"> <fmt:message key="condition_Ebook"/>
        </div>
      </div>

      <div class="mb-3 row">
        <label class="col-sm-2"><fmt:message key="bookImage"/></label>
        <div class="col-sm-5">
          <input type="file" name="BookImage" class="form-control">
        </div>
      </div>

      <div class="mb-3 row">
        <div class="col-sm-offset-2 col-sm-10">
          <input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddBook()">
        </div>
      </div>

    </form>
  </div>

  <jsp:include page="footer.jsp" />
</div>
</body>
</html>
