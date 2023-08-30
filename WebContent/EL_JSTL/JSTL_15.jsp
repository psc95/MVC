<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
<h2>JSTL sql 태그립 사용예제</h2>
<sql:setDataSource var="conn" driver="oracle.jdbc.OracleDriver"
				   url="jdbc:oracle:thin:@localhost:1521:xe"
				   user="night" password="123456"/>
				   <%-- DataBase 연결 conn을 생성 --%>

<sql:update dataSource="${conn}">
  insert into test values(1,'홍길동')
</sql:update>
<sql:update dataSource="${conn}">
  insert into test values(2,'이순신')
</sql:update>

<sql:query var="rs" dataSource="${conn}">
  select * from test
</sql:query>

<c:forEach var="data" items="${rs.rows}">
 ${data['num']}
 ${data['name']}<hr>
</c:forEach>
</body>
</html>