<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<html>
<head>
    <title>Set Cookie Test</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    Cookie[] cookies = request.getCookies();
    boolean cookieFound = false;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals(id)) {
                cookieFound = true;
                cookie.setMaxAge(0); // Delete the cookie
                response.addCookie(cookie);
                out.println("쿠키가 설정되어 있습니다. <br>기존 쿠키를 삭제합니다.<br>");
                
                break;
            }
        }
    }

    if (!cookieFound) {
        Cookie newUserCookie = new Cookie(id, password);
        response.addCookie(newUserCookie);
        out.println("쿠키 읽어 오는 예제 쿠키를 설정해야 합니다.<br>");
    }
%>
<a href="GetCookieTest.jsp">쿠키 가져오기</a>
</body>
</html>
