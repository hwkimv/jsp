<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드</title>
</head>
<body>
<h2>파일 업로드 폼</h2>
<form action="/upload" method="post" enctype="multipart/form-data">
    이름: <input type="text" name="username"><br>
    파일: <input type="file" name="myfile"><br>
    <input type="submit" value="업로드">
</form>
</body>
</html>
