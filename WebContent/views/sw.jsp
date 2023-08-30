<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<%-- jQuery 라이브러리 최신 버전 읽어옴 --%>
<script>
 function sw_check(){
	 if($.trim($('#title').val()).length == 0){
		 alert('제목을 입력!');
		 $('#title').val('').focus();
		 return false;
	 }
	 
	 if($.trim($('#content').val())==''){
		 //alert('내용을 입력!');
		 //$('#content').val('').focus();
		 $('.content_error').html("<strong style='color:red;'>내용을 입력!</strong>");
		 return false;
	 }
 }
 
</script>
</head>
<body>
<form method="post" action="service_ok" onsubmit="return sw_check();">
<%-- 서버 매핑주소로 service_ok로 설정함 --%>
제목 : <input name="title" id="title" size="30" ><br><br>
	  <%-- type속성을 생략하면 기본값이 text이다. --%>
내용 : <textarea name="content" id="content" rows="10" cols="36"></textarea>
      <br><span class="content_error"></span>
<hr>
	  <input type="submit" value="전송" >
	  <input type="Reset" value="취소" >
</form>
</body>
</html>