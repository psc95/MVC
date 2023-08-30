<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="country" value="${'korea'}" />

<c:if test="${country != null}"> <%-- !empty country을 사용해도 된다. --%>
  국가명 : <c:out value="${country}" />
</c:if>

<hr>

<c:choose>
 <c:when test="${country == 'korea'}">${country}의 겨울은 춥다</c:when>
 <c:when test="${country == 'canada'}">${country}의 겨울은 너무춥다</c:when>
 <c:otherwise>해당하는 나라가 없다.</c:otherwise>
</c:choose>