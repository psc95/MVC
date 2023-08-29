<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h1>EL(Expression Language:표현언어)</h1>
 <h3>표현언어에서 사용가능한 데이터</h3>
 [1] 정수 숫자형 : ${100 }<hr>
 [2] 실수 숫자형 : ${100.9 }<hr>
 [3] 문자열 형 : ${'표현언어 시작' }<hr>
 [4] 논리형 : ${true}<hr>
 [5] null : ${null }<hr>
 
 <h3>표현언어 연산자</h3>
 <%
   String input = null;
 %>
 \${10+100} = ${10+100 }<hr>
 \${5/2} = ${5/2 }<hr> <%-- 자바 언어에서는 정수 숫자를 나눗셈하면 몫만 구하지만 표현언어에서는 정수 숫자를
 나눗셈하면 몫과 나머지를 함께 구함. --%> 
 \${5 div 2} = ${5 div 2 }<hr> <%--div도 표현언어에서는 나눗셈 연산이다. --%>
 \${10 mod 3} = ${10 mod 3 }<hr> <%--mod는 표현언어에서 나머지 연산 --%>
 \${3 gt 10} = ${3 gt 10 }<hr> <%--gt는 ~보다 크다. 결과값은 false --%>
 \${empty input} = ${empty input }<hr> <%--input 변수가 비어 있다면 참 --%>
</body>
</html>