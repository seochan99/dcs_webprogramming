<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>q1</title>
</head>
<body>
   <h1>c:if 커스텀 액션 사용</h1>
   <c:set value="webp" var="msg"/>
      msg : ${msg}<br>
   <c:if test="${msg=='webp'}" var="re">
       test result = ${re}<br>
   </c:if>
   
   <hr>
   
   <h1>c:choose 커스텀 액션 사용</h1>
   <c:set var="data" value="개발자" />
   <c:choose>
       <c:when test="${data eq '개발자'}">
           value = ${data}<br>
           ${data}입니다.
       </c:when>
       <c:otherwise>
           <p>${data}가 아닙니다.</p>
       </c:otherwise>
   </c:choose>
   
   <hr>
   
   <h1>c:forEach 커스텀 액션 사용</h1>
   <table>
       <tr>
           <th>Value</th>
           <th>Square</th>
       </tr>
       <c:forEach var="num" begin="0" end="9" step="3">
           <tr>
               <td><center><c:out value="${num}" /></center></td>
               <td><center><c:out value="${num * num * num}" /></center></td>
           </tr>
       </c:forEach>
   </table>

   <hr>
   
   <h1>c:import 커스텀 액션 사용</h1>
   <!-- import 진 -->행
   <c:import url="q1_import.jsp" />
   
   <hr>
</body>
</html>