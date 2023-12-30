<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Processing</title>
</head>
<body>

<form action="week9_Q4_result.jsp" method="get">
    아이디 : <input type="text" name="name"><br>
    회원님이 관심있는 스포츠를 선택하세요 <br>
    축구 <input type="checkbox" name="sprots" value="축구">
    농구 <input type="checkbox" name="sprots" value="농구">
    야구 <input type="checkbox" name="sprots" value="야구">
    골프 <input type="checkbox" name="sprots" value="골프">
    <br>
    <input type="submit" value="확인">
    <input type="reset" value="취소">
</form>

</body>
</html>
