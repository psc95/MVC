package net.daum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.daum.vo.MemberDTO;

public class MemberDAOImpl {//DBCP 커넥션 풀에 의한 오라클 연결 클래스
	
	Connection con = null; //db연결 con
	PreparedStatement pt = null; //쿼리문 수행 pt
	ResultSet rs = null; //검색 결과 레코드를 저장할 rs
	DataSource ds = null; //커넥션 풀 관리 ds
	String sql = null;
	
	public MemberDAOImpl() {
		try{
			Context ctx = new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//xe 데이터베이스를 server.xml
			//로 부터 찾아서 커넥션 풀 관리 ds를 생성
		}catch(Exception e) {e.printStackTrace();}
	}//기본 생성자
	
	//아이디 중복 검색+로그인 인증
	public MemberDTO idCheck(String id) {
		MemberDTO m = null;
		
		try {
			con = ds.getConnection();//커넥션 풀 관리 ds로 DB연결 con생성
			sql = "select * from tbl_memberT where mem_id=?";
			pt = con.prepareStatement(sql); //쿼리문을 미리 컴파일 하여 수행할 pt생성
			pt.setString(1, id);
			rs = pt.executeQuery();//검색 쿼리문 수행후 결과 레코드를 rs에 저장
			if(rs.next()){//검색 결과 레코드가 하나이면 if문으로 처리
				m = new MemberDTO();
				m.setMem_id(rs.getString("mem_id"));
				m.setMem_pwd(rs.getString("mem_pwd"));
				m.setMem_name(rs.getString("mem_name"));
			}
		
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pt != null) pt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return m;
	}//idCheck()
	
	//회원 저장
	public int insertMember(MemberDTO m) {
		int re = -1; //저장 실패시 반환값
		
		try {
			con = ds.getConnection();
			sql = "insert into tbl_memberT values(?,?,?,?,?,sysdate)";
			pt = con.prepareStatement(sql);
			pt.setString(1, m.getMem_id());
			pt.setString(2, m.getMem_pwd());
			pt.setString(3, m.getMem_name());
			pt.setString(4, m.getMem_phone());
			pt.setString(5, m.getMem_email());
			
			re = pt.executeUpdate();//저장 쿼리문 수행후 성공한 레코드 행의 개수를 반환
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt != null) pt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;
	}//insertMember()
}
