<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>forward Action Tag</h1>
<hr/>
<p>이 파일은 Q2_sub.jsp입니다.</p>
<hr/>

현재 웹 브라우저에 나타난 웹 페이지는 Q2_main.js로부터 이동되었습니다. 


<hr/>
Q2_main.jsp에서 넘어온 메세지 : 
<%
    String message = request.getParameter("message");
    out.println(message);
%> 



</body>
</html>
