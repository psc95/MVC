<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/images/grape.jpeg" var="data" />
<h3>그림파일명 : <c:out value="${data}" /></h3>
<img src="${data}" width="300" height="280" alt="청포도" >
