<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h4>1부터 100까지의 홀수 누적합</h4>
<c:set var="sum" value="0" /><%-- c:set은 JSTL변수 설정태그이다. sum변수에 0으로 초기화 --%>

<c:forEach var="i" begin="1" end="100" step="2" >
  <%--begin속성은 시작값, end속성은 끝값, step속성은 증가값, c:forEach는 JSTL 반복문이다. --%>
  <c:set var="sum" value="${sum+i}" /> <%-- 누적합 --%>
</c:forEach>
누적합=<c:out value="${sum}"/>
<hr>

<h4>구구단 : 7단</h4>
<%--
 문제) c:forEach JSTL반복문을 사용해서 7단을 구해보자
--%>
<c:forEach var="i" begin="1" end="9" step="1">
 <c:out value="7 x ${i} = ${7*i} "/><br>
</c:forEach> 

<ul>
 <c:forEach var="i" begin="1" end="9"> <%-- step="1" 증가값이 생략됨. --%>
  <li>7 x ${i} = ${7 * i}</li>
 </c:forEach>
</ul>