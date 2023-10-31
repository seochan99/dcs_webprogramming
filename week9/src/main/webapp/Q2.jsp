<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>String Class Method</b>
	<%
		String str1 = "mike";
		String str2 = "MIKE";
	%>
	<%=
		"String : mike <br> => 대문자 : " + str1.toUpperCase() + "<br>=>소문자 : " + str2.toLowerCase() + " <br>=> 문자열 반환(1~3) : " + str1.substring(1,3)
	%>
</body>
</html>