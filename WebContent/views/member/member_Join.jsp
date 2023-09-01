<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 MVC 회원가입폼 </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="./js/member.js"></script>
</head>
<body>
 <form method="post" action="mem_join_ok.daum" onsubmit="return join_check()">
  <table border="1">
   <tr>
    <th colspan="2">회원가입</th>
   </tr>
   <tr>
    <th>아이디</th>
    <td><input type="text" name="mem_id" id="mem_id" size="14"></td>
   </tr>
   <tr>
    <th>비밀번호</th>
    <td><input type="password" name="mem_pwd" id="mem_pwd" size="14" ></td>
   </tr>
   <tr>
    <th>비번확인</th>
    <td><input type="password" name="pwd_chk" id="pwd_chk" size="14" ></td>
   </tr>
   <tr>
    <th>회원이름</th>
    <td><input name="mem_name" id="mem_name" size="14" ></td>
   </tr>
   <tr>
    <th>폰번호</th>
    <td><input type="tel" name="mem_phone" id="mem_phone" size="20" ></td>
   </tr>
   <tr>
    <th>E-Mail</th>
    <td><input type="email" name="mem_email" id="mem_email" size="28" ></td>
   </tr>
   <tr>
    <th colspan="2">
     <input type="submit" value="가입">
     <input type="reset" value="취소" onclick="$('#mem_id').focus();">
    </th>
   </tr>
  </table>
 </form>
</body>
</html>