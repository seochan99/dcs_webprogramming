<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>10주차 2번</title>
</head>
	<body>
		<h3>표현 언어의 사용예제 2 - 파라미터 값 처리</h3>
		<form action="q2_result.jsp">
		   이름 <input type="text" name="name" value="<%=request.getParameter("name")%>">
		   <input type="submit" value="확인"><br><br>
		</form>
		이름은(request.getParameter): <%= request.getParameter("name") %> 입니다.<br>
		이름은(EL): ${param.name} 입니다.
	</body>
</html>