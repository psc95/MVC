<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setAttribute("name", "홍길동");//name키이름에 홍길동 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h3>EL 표현언어 닷(.) 연산자로 접근</h3>
 ${requestScope.name}<br> <%-- requestScope는 jsp내장객체의 request에 해당한다.name키이름 값을
 가져온다. --%>
 ${param.id}<hr> <%-- 파라미터 이름 id에 실려온 값을 EL로 출력. *.jsp?id=값 형태의 주소창에
 노출되는 get방식으로 id파라미터 값을 전달해야 한다. --%>
 
 <h3>브라켓([]) 연산자</h3>
 ${requestScope["name"]}<br>
 ${param['id']}<hr>
 
 <h3>jsp로 표현</h3>
 <%=request.getAttribute("name")%><br> <%--name키이름값을 가져온다. --%>
 <%=request.getParameter("id")%><hr> <%--파라미터이름 id에 실려온 값을 가져온다 --%>
</body>
</html>