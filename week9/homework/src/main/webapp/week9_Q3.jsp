<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>String Manipulation and Error Handling</title>
</head>
<body>

<h1>String Class 사용 예제 </h1>
<hr/>
<%
    String text = "web program";
    out.println("문자열 : " + text + "<br>");

    String modifiedText = text.substring(5,10);
    out.println("문자열 반환 : " +text +"->"+ modifiedText + "<br>");

    modifiedText = text.replace("program","programming");
    out.println("문자열 대체: " +text +"->"+ modifiedText + "<br>");

    modifiedText = text.toUpperCase();
    out.println("문자열 대문자로 변환 : " +text +"->"+ modifiedText + "<br>");
    %>
    <h1>Try-Catch 문 사용예제 </h1>
    <hr/>
    <% 
    for(int i = 5; i >= 0; i--) {
        try {
            int num = 30/i;
            out.println("Result: " + num + "<br>");
        } catch(ArithmeticException e) {
        	out.println("오류가 발생했습니다!<br>");
            out.println("오류(getMessage): " + e.getMessage() + "<br>");
        }
    }
    %>

</body>
</html>
