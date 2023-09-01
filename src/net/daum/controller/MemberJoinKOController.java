package net.daum.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.MemberDAOImpl;
import net.daum.vo.MemberDTO;

public class MemberJoinKOController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");//웹브라우저에 출력되는 문자와 태그,
		//언어코딩 타입을 설정
		PrintWriter out = response.getWriter();//출력 스트림 생성
		
		request.setCharacterEncoding("UTF-8"); //post로 전달되는 한글을 안 깨지게 한다.
		
		String mem_id = request.getParameter("mem_id");
		
		MemberDAOImpl mdao = new MemberDAOImpl();
		MemberDTO db_id = mdao.idCheck(mem_id);//아이디 중복 검색
		
		if(db_id != null) {
			out.println("<script>");
			out.println("alert('중복 아이디 입니다!');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			String mem_pwd = request.getParameter("mem_pwd");
			String mem_name = request.getParameter("mem_name");
			String mem_phone = request.getParameter("mem_phone");
			String mem_email = request.getParameter("mem_email");
			
			MemberDTO m = new MemberDTO();
			m.setMem_id(mem_id); m.setMem_pwd(mem_pwd); m.setMem_name(mem_name);
			m.setMem_phone(mem_phone); m.setMem_email(mem_email);
			
			int re = mdao.insertMember(m); //저장 성공시 1 반환
			if(re == 1) {
				out.println("<script>");
				out.println("alert('회원가입에 성공했습니다!');");
				out.println("location='mem_login.daum';");
				out.println("</script>");
			}
		}
		return null;
	}

}
