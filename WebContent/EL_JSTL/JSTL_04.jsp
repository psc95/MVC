<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int[] score = {100,200,300};
	request.setAttribute("arr", score);//arr키이름에 score배열 저장
%>
<h2>JSTL c:forEach문과 c:forTokens문 실습</h2>
배열원소값 출력:
<c:forEach var="i" items="${arr}" begin="0" end="2" step="1">
 <%--c:forEach JSTL반복문이다. begin은 시작값,end는 끝값, step은 증가값 --%>
 <c:out value="${i}" />&nbsp; <%--&nbsp;은 한칸의 빈공백을 띄운다. --%>
 <c:set var="total" value="${total+i}" />
</c:forEach>
<hr>
배열원소 누적합=<c:out value="${total}" />
<hr>
홀수값:
<c:forEach var="a" begin="1" end="9" step="2">
 <c:out value="${a}" />&nbsp;
</c:forEach>
<hr>

<c:forTokens var="cityName" items="서울,부산,인천" delims=",">
<%-- ,를 기준으로 도시이름을 분리 --%>
 <c:out value="${cityName}" /><br>
</c:forTokens>
<hr>
