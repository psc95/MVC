<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <c:if test="true"> <%-- jstl c:if 조건문이고 c:else문은 없다. --%>
  <c:out value="${'무조건 실행'}" /> <%--c:out은 JSTL 출력문 --%>
 </c:if>
 <hr>
 
 <c:if test="${param.name=='king'}"> <%--파라미터 name에 king담겨져서 전달되면 다음문장 실행 --%>
  name파라미터 값은 '${param.name}' 입니다.<hr>
 </c:if>
 
 <c:if test="${param.age > 20}">
  당신 나이는 20세 초과입니다.<hr>
 </c:if>
 
 <%-- c:choose c:when c:otherwise JSTL은  자바의 switch ~case문에 해당하는 다중 선택문이다.
 해당 사항이 없을때 실행되는 default문에 해당하는 것은 c:otherwise문이다. --%>
 <c:choose>
  <c:when test="${param.name == 'king'}">
   당신의 이름은 '${param.name}' 입니다. <hr>
  </c:when>
  <c:when test="${param.age > 20}">
   당신은 20세 초과입니다.<hr>
  </c:when>
  <c:otherwise>당신은 'king'이 아니고, 20세 이상도 아닙니다.</c:otherwise>
 </c:choose>
</body>
</html>