<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>
<html>
<head>
    <title>Get Cookie Test</title>
</head>
<body>

<%
    Cookie[] cookies = request.getCookies();
    boolean onlySessionCookiePresent = true;

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            // JSESSIONID가 아닌 다른 쿠키가 존재하는 경우
            if (!cookie.getName().equals("JSESSIONID")) {
                onlySessionCookiePresent = false;
                break;
            }
        }

        // JSESSIONID만 존재하는 경우를 제외하고 모든 쿠키 출력
        if (!onlySessionCookiePresent) {
            for (Cookie cookie : cookies) {
                out.println("Name: " + cookie.getName() + "<br>");
                out.println("Value: " + cookie.getValue() + "<br>");
                out.println("Domain: " + cookie.getDomain() + "<br>");
                out.println("MaxAge: " + cookie.getMaxAge() + "<br>");
                out.println("Path: " + cookie.getPath() + "<br>");
                out.println("Secure: " + cookie.getSecure() + "<br>");
                out.println("Comment: " + cookie.getComment() + "<br>");
                out.println("Version: " + cookie.getVersion() + "<br>");
                out.println("<br>");
            }
        }
    }
    
    if(onlySessionCookiePresent){
        out.println("쿠키가 설정되지 않았습니다. 쿠키를 설정해주세요.<br>");

    }
%>

<a href='SetCookieTest.html'>쿠키 설정으로 돌아가기</a>

</body>
</html>
