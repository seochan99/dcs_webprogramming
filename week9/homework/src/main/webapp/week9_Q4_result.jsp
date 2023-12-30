<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String[] skills = request.getParameterValues("sprots");

    if(name != null && skills != null) {
        out.println(name + "님의 취미는 ");
        for(String skill : skills) {
            out.print(skill + " ");
        }
        out.println("입니다.");
    }
%>

</body>
</html>