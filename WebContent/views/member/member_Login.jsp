<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL 코어 태그립 추가 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 MVC 회원관리 로그인 폼</title>
 <script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
  function login_check(){
     if($.trim($("#login_id").val()) == ""){
        alert('로그인 아이디를 입력하세요!');
        $('#login_id').val('').focus();
        return false;
     }
     
     if($.trim($('#login_pwd').val()) == ''){
        //alert('로그인 비번을 입력하세요!');
        $('.pwd_error').html("<strong style='color:red;font-size:12px;'>"
                            +"로그인 비번을 입력하세요!</strong>");
        $('#login_pwd').val('').focus();
        return false;
     }
  }
</script>
</head>
<body>
 <c:if test="${empty id}"> <%--세션 아이디가 비어 있다면 =>로그인 전 화면 --%>
   <h2>로그인 폼</h2>
   <form method="post" action="mem_login_ok.daum" onsubmit="return login_check();">
    <table border="1">
     <tr>
      <th>아이디</th>
      <td><input name="login_id" id="login_id" size="14" tabindex="1" ></td>
      <%-- tabindex="1"로 지정하면 탭키를 눌렀을 때 첫번째로 포커스를 가진다. --%>
      <th rowspan="2">
       <input type="submit" value="로그인" >       
      </th>
     </tr>
     
     <tr>
      <th>비밀번호</th>
      <td><input type="password" name="login_pwd" id="login_pwd" size="14" 
      tabindex="2" >
      <br><span class="pwd_error"></span>
      </td>
     </tr>
     
     <tr>
      <th colspan="3">
       <input type="button" value="아이디 찾기" >
       <input type="button" value="비번 찾기" >
       <input type="button" value="회원가입" onclick="location='mem_join.daum';" >
      </th>
     </tr>
    </table>
   </form>
 </c:if>
 
 <c:if test="${!empty id}"> <%--세션 아이디가 비어 있지 않다면 =>로그인 이후 화면 --%>
   <h2>로그인 이후 메인화면</h2>
   <form method="post" action="mem_logout.daum">
     <table border="1">
      <tr>
       <th>
        <input type="button" value="정보수정" >
        <input type="button" value="회원탈퇴" >
        <input type="submit" value="로그아웃" >
       </th> 
      </tr>
      
      <tr>
       <th>아이디가 ${id} 인<br> <span style="font-size:28px;">${name}님</span> 로그인을 환영합니다.</th>
      </tr>          
     </table>
    
   </form>
 </c:if>
</body>
</html>