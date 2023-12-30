<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html>
<head>
<meta charset="UTF-8">
<title>Session URL Rewriting Result</title>
</head>
<body>
<h1>Session URL Rewriting Result</h1>
<%
    String sessionID = session != null ? session.getId() : "No Session";
    String id = session != null ? (String) session.getAttribute("id") : "No ID";
%>
Session ID: <%= sessionID %><br>
ID: <%= id %><br>
</body>
</html>
