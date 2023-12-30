<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>q3</title>
</head>
<body>

<form action="" method="post">
    SUBJECT: <input type="text" name="subject"><br>
    LECTURE: <input type="text" name="lecture"><br>
    <input type="submit" value="제출">
</form>

<hr>

<jsp:useBean id="lecture" class="beans.Javabeans" scope="request" />
<jsp:setProperty name="lecture" property="subject"/>
<jsp:setProperty name="lecture" property="lecture"/>

SUBJECT : <jsp:getProperty name="lecture" property="subject" /><br>
LECTURE : <jsp:getProperty name="lecture" property="lecture" />

</body>
</html>