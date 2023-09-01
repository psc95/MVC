package net.daum.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.daum.dao.MemberDAOImpl;
import net.daum.vo.MemberDTO;

public class MemberLoginOKController implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("UTF-8");
		
		String login_id = request.getParameter("login_id");
		String login_pwd = request.getParameter("login_pwd");
		
		MemberDAOImpl mdao = new MemberDAOImpl();
		MemberDTO dm = mdao.idCheck(login_id);
		
		if(dm == null) {
			out.println("<script>");
			out.println("alert('가입 안된 회원입니다!');");
			out.println("history.go(-1);");
			out.println("</script>");
		}else {
			if(!dm.getMem_pwd().equals(login_pwd)) {
				out.println("<script>");
				out.println("alert('비번이 다릅니다!');");
				out.println("history.back();");
				out.println("</script>");
			}else {
				HttpSession session = request.getSession(); //세션 객체 생성
				
				session.setAttribute("id",login_id);
				session.setAttribute("name",dm.getMem_name());
				//세션 id,name 키이름에 아이디와 히외원이름을 저장
				
				ActionForward forward = new ActionForward();
				forward.setRedirect(true);//새로운 매핑주소로 이동
				forward.setPath("mem_login.daum");
				return forward;
			}//Inner if else
		}//Outer if else
		return null;
	}

}
