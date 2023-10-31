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
	<p align="center">
	<%
		try{
			int a =0;
			int num = 100/a;
			out.println(num);
		}catch(Exception e){
			out.println("error!"+e.getMessage()+"<br>");
		} finally{
			out.println("LALALAL");
		}
	%>
</body>
</html>