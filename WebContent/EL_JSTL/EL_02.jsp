<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>기존 유즈빈 액션태그,표현식과 EL 즉 표현언어 비교 실습</h2>
 <jsp:useBean id="user" class="net.daum.vo.UserVO" scope="page" />
 <%-- jsp유즈빈 액션태그를 사용해서 UserVO빈클래스의 객체명 user를 생성 --%>
 <jsp:setProperty name="user" property="firstName" value="홍" />
 <%--값 저장 액션태그이다. firstName변수에 value속성값 홍을 저장한다. 이 부분을 자바코드로 표현하면
 user.setFirstName("홍");과 같은 기능을 하낟. --%>
 <jsp:setProperty name="user" property="lastName" value="길동" />
 
 성:<jsp:getProperty name="user" property="firstName" /> <%--값 반환 액션태그. 이 부분을
 자바 코드로 표현하면 user.getFristName(); 같다. --%>
 <br>
 이름:<%=user.getLastName() %>
 <hr>
 성:${user.firstName}<br>
 이름:${user.lastName}<hr>
 <%-- 포현언어인 EL로 출력. 결국 자바코드로 표현하면 user.getFirstName()과 같은 기능을 한다. --%>
</body>
</html>