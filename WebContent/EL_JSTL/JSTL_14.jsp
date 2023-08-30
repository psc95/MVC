<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8" />
<%--POST로 전달되는 한글을 안깨지게 한다. jsp의 request.setCharacterEncoding("UTF-8");과
같은 기능을 한다. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<c:if test="${empty param.name}">
<form method="post" action="JSTL_14.jsp">
 <label for="name">이름 입력:</label>
 <input type="text" name="name" id="name" size="14" />
 <input type="submit" value="확인" >
</form>
</c:if>
<hr>
<c:if test="${!empty param.name}">
입력하신 이름은 <strong><c:out value="${param.name}" /></strong> 입니다.
</c:if>
</body>
</html>