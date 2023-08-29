<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL 코어 태그립 추가, JSTL은 JSP Standard Tag Library의 약어로서 국제적으로 공인 받은
사용자 정의 태그이다. 외부 라이브러리가 있어야 한다. EL은 외부라이브러리가 필요없다. 서블릿 mvc를 포함한
스프링 프레임웍에서 뷰페이지 문법으로 많이 사용되어 진다. 물론 스프링 부트 이후부터는 타임리프(ThymeLeaf)라는
뷰페이지 템플릿을 제공해 주고 있다.뷰페이지 문법으로 JSTL과 EL을 사용하면 기존의 JSP 스크립트 요소인 선언문,스크립트릿,표현식보다
가독성이 좋아지고 코드가 더 간결해 진다. --%>

<jsp:useBean id="user" class="net.daum.vo.UserVO" />
<jsp:setProperty name="user" property="firstName" value="세종" />
<jsp:setProperty name="user" property="lastName" value="대왕님" />

<h3>기존 jsp 스크립트 요소로 성과 이름 가져오기 </h3>
성:<% if(user.getFirstName() != null){ %>
	<input type="text" name="firstName" size="5" value="<%=user.getFirstName()%>" >
	<% } %>
이름:<% if(user.getLastName() != null){ %>
	<input type="text" name="lastName" size="8" value="<%=user.getLastName()%>" >
	<% } %>
<hr>

<h3>JSTL과 EL을 사용해서 성,이름 가져오기</h3>
<form>
  성: <c:if test="${!empty user.firstName}"> <%--c:if JSTL 조건문이다. test속성값으로
  	EL이 사용됨. --%>
  		<input type="text" name="firstName" size="4" value="${user.firstName}" >
     </c:if>
 이름: <c:if test="${!empty user.lastName}">
 	   <input type="text" name="lastName" size="8" value="${user.lastName}" >
 	  </c:if>
</form>