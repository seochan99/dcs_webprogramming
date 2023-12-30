<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>이 파일은 Q2_main.jsp입니다.<br/>

어떤 것으로 글이 적힐까요? <br/>
main일까요? sub일까요?<br/>
title로도 바뀌니깐 참고하세요.<hr></p>
<h3>jsp:forward</h3>
<jsp:forward page="week9_Q2_sub.jsp">
    <jsp:param name="message" value="Good luck with your class assignment" />
</jsp:forward>

</body>
</html>
