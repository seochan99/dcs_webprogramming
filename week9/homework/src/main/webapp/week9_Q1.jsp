<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Star Pattern</title>
</head>
<body>
<%
    int numRows = 10; 
    int row, col;
    
    for (row = numRows; row >= 1; row--) {
        for (col = 1; col < row; col++) {
            out.print("&nbsp;&nbsp;");
        }
        for (col = row; col <= numRows; col++) {
            out.print("*");
        }
        out.println("<br>");
    }
%>


    <%
    int n = 10; 
    int i, j;
    
    for (i = 1; i <= n; i++) {
        for (j = 1; j < i; j++) {
            out.print("&nbsp;&nbsp;");
        }
        for (j = i; j <= n; j++) {
            out.print("*");
        }
        out.println("<br>");
    }
%>

</body>
</html>
