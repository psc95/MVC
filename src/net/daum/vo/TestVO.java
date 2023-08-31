package net.daum.vo;

import java.sql.Timestamp;

public class TestVO { //데이터 저장빈 클래스(자바빈:Java Bean)=>네임 피라미터 이름과 빈클래스 변수명,
	//테이블 컬럼명을 같게 한다.
	
	private int no;//번호
	private String title;//제목
	private String content;//내용
	private Timestamp regdate;//등록날짜
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
}
