<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
</head>
<body>
 <h2>DBCP 커넥션풀로 오라클 연결 테스트</h2>
 <%! //선언문 => 변수 선언 용도로 활용됨.
    Connection con = null;
    DataSource ds=null; //커넥션 풀 관리 ds
 %>
 <%
   try{
	   Context ctx=new InitialContext();
	   ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//JNDI 디렉토리 서비스에 의해서
	   //폴더 server.xml에 설정된 xe데이터 베이스를 찾아서 커넥션 풀 관리 ds를 생성
	   con=ds.getConnection();//db연결 con생성
	   out.println("DBCP 커넥션 풀 연결 성공!");
   }catch(Exception e){e.printStackTrace();}
   finally{
	   try{
		   if(con != null) con.close();
	   }catch(Exception e){e.printStackTrace();}
   }
 %>
</body>
</html>