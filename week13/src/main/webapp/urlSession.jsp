<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<html>
<head>
<meta charset="UTF-8">
<title>Session URL Rewriting Test</title>
</head>
<body>
<h2>Session URL Rewriting Test</h2>
<%
    String id = request.getParameter("id");
    session.setAttribute("id", id);

    String sessionID = session.getId();
    String rewrittenURL = "urlSessionResult.jsp?jsessionid=" + sessionID;

    response.encodeURL("urlSessionResult.jsp");
%>
Session ID: <%= sessionID %><br>
ID: <%= id %><br>

<a href="<%= rewrittenURL %>">Test1</a><br>
<a href="urlSessionResult.jsp">Test2</a>
</body>
</html>
