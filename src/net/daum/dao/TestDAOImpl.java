package net.daum.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.daum.vo.TestVO;

public class TestDAOImpl {//DBCP 커넥션 풀에 의해서 오라클 연결
	
	Connection con = null; //DB연결 con
	PreparedStatement pt = null;//쿼리문 수행
	ResultSet rs = null; //검색 결과 레코드를 저장할 rs
	DataSource ds = null;//커넥션 풀 관리 ds
	String sql = null;//쿼리문 저장변수
	
	public TestDAOImpl() {
		try {
			Context ctx = new InitialContext();
			ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//server.xml에 설정된 xe
			//DB를 찾아서 커넥션 풀 관리 ds를 생성
		}catch(Exception e) {e.printStackTrace();}
	}//생성자
	
	//저장
	public int testInsert(TestVO t) {
		int re = -1;//저장 실패시 바환값
		
		try {
			con = ds.getConnection();//커넥션 풀 관리 ds로 db연결 con생성
			sql = "insert into tbl_test (no,title,content,regdate) values("
					+"bno_seq25.nextval,?,?,sysdate)";
			pt = con.prepareStatement(sql);//쿼리문을 미리 컴파일 하여 수행할 pt생성 -> 속도가 빠름
			pt.setString(1, t.getTitle());//쿼리문의 첫번째의 물음표에 문자열로 제목을 저장
			pt.setString(2, t.getContent());
			
			re = pt.executeUpdate();//저장 쿼리문 수행후 성공한 레코드 행의 개수 반환
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pt != null) pt.close();
				if(con != null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
		return re;
	}//testInsert()
	
	//목록
	public List<TestVO> getTestList(){
		
		List<TestVO> tlist = new ArrayList<>();
		
		try {
			con = ds.getConnection();
			sql = "select * from tbl_test order by no desc";
			pt=con.prepareStatement(sql);
			rs=pt.executeQuery();//검색 쿼리문 수행후 결과 레코드를 rs에 저장
			while(rs.next()) {//next()메서드는 다음 레코드 행이 존재하면 참
				TestVO t = new TestVO();
				t.setNo(rs.getInt("no"));//no컬럼 정수 레코드를 가져와서 setter()에 저장
				t.setTitle(rs.getString("title"));//title컬럼 문자열 레코드를 가져와서 저장
				t.setContent(rs.getString("content"));
				t.setRegdate(rs.getTimestamp("regdate"));
				
				tlist.add(t);//컬렉션에 레코드를 추가
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs != null) rs.close();
				if(pt != null) pt.close();
				if(con != null) con.close(); //관례적으로 생성된 역순으로 닫는다.
			}catch(Exception e) {e.printStackTrace();}
		}
		return tlist;
	}//getTestList()
}
