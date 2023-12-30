<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>10-2</title>
	</head>
	<body>
		<%
		   pageContext.setAttribute("scopeName1", "봄비");
		   request.setAttribute("scopeName2", "여름장마");
		   session.setAttribute("scopeName3", "가을바람");
		   application.setAttribute("scopeName4", "겨울눈");
		%>
		
		<h4>각 객체에 setAttribute 속성으로 값 설정 후<br>jsp 기본 표현 방식과 el 방식의 비교 출력</h4>
		
		<h4>jsp 기본 표현 방식</h4>
		page 영역 : <%= pageContext.getAttribute("scopeName1") %><br>
		request 영역 : <%= request.getAttribute("scopeName2") %><br>
		session 영역 : <%= session.getAttribute("scopeName3") %><br>
		application 영역 : <%= application.getAttribute("scopeName4") %><br>
		
		<h4>EL 표현 방식</h4>
		page 영역 (EL) : ${pageScope.scopeName1}<br>
		request 영역 (EL) : ${requestScope.scopeName2}<br>
		session 영역 (EL) : ${sessionScope.scopeName3}<br>
		application 영역 (EL) : ${applicationScope.scopeName4}<br>
		
		<hr><hr>
		
		<h4>EL PageContext 내장객체 예제</h4>
		Method(method) : ${pageContext.request.method}<br>
		URI(requestURL) : ${pageContext.request.requestURI}<br>
		
		<hr><hr>
		
		<h3>표현 언어의 사용예제 2 - 파라미터 값 처리</h3>
		
		<form action="q2_result.jsp">
		   이름 <input type="text" name="name">
		   <input type="submit" value="확인"><br><br>
		</form>
		
		이름은(getParameter) : <%=request.getParameter("name")%> 입니다.<br>
		이름은(param) : ${param.name} 입니다.
	</body>
</html>