<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
<%
	String id = "2019112546";
	String pw = "12345";
%>
	id : <%=id %><br>
	pw : <%=pw %><br>
<%
session.setAttribute("id", id);
session.setAttribute("pw", pw);
%>
<a href="session-get.jsp"> session-get page move</a>

</body>
</html>