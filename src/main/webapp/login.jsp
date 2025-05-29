<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" href="/css/bootstrap.min.css" />
</head>
<body>
<div class="container py-4">
  <%@ include file="menu.jsp" %>

  <%
    System.out.println("현재 로그인 사용자: " + request.getUserPrincipal());
  %>

  <div class="p-5 mb-4 bg-body-tertiary rounded-3">
    <div class="container-fluid py-5">
      <h1 class="display-5 fw-bold">로그인</h1>
      <p class="col-md-8 fs-4">Login</p>
    </div>
  </div>

  <div class="row align-items-md-stretch text-center">
    <div class="row justify-content-center align-items-center">
      <div class="h-100 p-5 col-md-6">
        <h3>Please sign in</h3>

        <% String error = request.getParameter("error"); %>
        <% if (error != null) { %>
        <div class="alert alert-danger">
          아이디와 비밀번호를 확인해 주세요
        </div>
        <% } %>

        <!-- ✅ Spring Security 로그인 처리 기본 경로 -->
        <form class="form-signin" action="/login" method="post">
          <div class="form-floating mb-3 row">
            <input type="text" class="form-control" id="usernameInput" name="username" required autofocus>
            <label for="usernameInput">ID</label>
          </div>

          <div class="form-floating mb-3 row">
              <input type="password" class="form-control" id="passwordInput" name="password">
              <label for="passwordInput">Password</label>
            </div>

          <button class="btn btn-lg btn-success" type="submit">로그인</button>
        </form>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp" %>
</div>
</body>
</html>
