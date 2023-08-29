<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="http://localhost:7996/Mvc/EL_JSTL/addr.jsp" var="data" />
<%-- 외부 url주소 결과 자원을 읽어와서 data JSTL변수에 저장함 --%>

읽어온 외부 자원결과값 : <strong style="font-size:32px; color:orange;">${data}</strong>