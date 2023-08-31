<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<table border="1">
 <tr>
  <th colspan="3"> 목록보기</th>
 </tr>
 <tr>
  <th>번호</th> <th>제목</th> <th>등록날짜</th>
 </tr>
 <c:if test="${!empty tlist}">
  <c:forEach var="t" items="${tlist}">
  <tr>
   <th>${t.no}</th> <th>${t.title}</th> <th>${t.regdate}</th>
  </tr>
  </c:forEach>
  </c:if>
 <c:if test="${empty tlis}">
  <tr>
   <th colspan="3">목록이 없습니다.</th>
  </tr>
  </c:if>
  <tr>
   <th colspan="3">
   <input type="button" value="입력" onclick="location='service_write';">
  </tr>
</table>
</body>
</html>