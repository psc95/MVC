<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="fruit" value="${param.name}" /> <%-- 파라미터이름 name에 실려온 값을
fruit JSTL 변수에 저장한다. *.jsp?name=값 형태의 주소창에 노출되는 get방식으로 전달해야 한다. --%>
	
파라미터이름 name에 실려온 값:
<c:if test="${!empty fruit}">
  <c:out value="${fruit}" />
</c:if>
<hr>

<c:choose>
  <c:when test="${fruit == 'apple'}">
   <c:out value="${fruit}" /> : 사과
  </c:when>
  <c:when test="${fruit == 'grape'}">>
   <c:out value="${fruit}" /> : 포도
  </c:when>
  <c:otherwise>해당사항 없음</c:otherwise>
</c:choose> <!-- JSTL c:choose 다중 조건문, 자바의 switch~case문과 같은 기능을 한다.
switch~case의 default문과 같은 기능을 하는 것은 c:otherwise문이다. -->
