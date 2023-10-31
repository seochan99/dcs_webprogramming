<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
now session id <% session.getAttribute("id");  %>
now session pw <% session.getAttribute("pw");  %>
</body>
</html>