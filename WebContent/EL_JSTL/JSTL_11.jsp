<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${now}" type="date" dateStyle="full" /><hr>
<%-- fmt:formatDate JSTL은 날짜 정보를 출력할 때 이용, type="date"는 날짜값이고 기본값,
dateStyle="full"은 full형태의 날짜 --%>

<fmt:formatDate value="${now}" type="date" dateStyle="short" /><hr>
<%-- short는 간단 형태의 날짜값 출력 --%>

<fmt:formatDate value="${now}" type="time" /><hr>
<%-- time은 시간값 출력 --%>

<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" />
<%-- both는 날짜와 시간값 출력, timeStyle="full"은 full형태의 시간값 출력 --%>