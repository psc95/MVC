package net.daum.vo;

public class UserVO {//성과 이름을 저장하는 데이터 저장빈 클래스 => 중간에 자료 저장하는 역할
	
	private String firstName;//성
	private String lastName;//이름
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
