<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="str01" value="abcd e f" />

문자열 길이 : ${fn:length(str01)}<hr>
영문대문자로 변경 : ${fn:toUpperCase(str01)}<hr>
영문소문자로 변경 : ${fn:toLowerCase(str01)}<hr>
첫문자를 0부터 시작해서 2이상 4미만 사이의 문자 반환: ${fn:substring(str01,2,4)}<hr>
빈공백을 -로 변경: ${fn:replace(str01," ", "-")}<hr>

<c:set var="token" value="1,2,3,4,5" /><hr>
<c:set var="arr" value="${fn:split(token,',')}" />
<%-- ,구분자를 기준으로 문자를 분리해서 분리된 문자를 배열원소값으로 반환 --%>
배열원소값을 +로 결합 : ${fn:join(arr,"+")}<hr>