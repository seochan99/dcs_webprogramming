<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10-1</title>
</head>
<body>
	${param.id}님의 취미는<br>
	${paramValues.sports[0]}
	${paramValues.sports[1]}
	${paramValues.sports[2]}
	${paramValues.sports[3]}
</body>
</html>