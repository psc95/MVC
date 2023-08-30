package net.daum.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/service_ok") //service_ok 매핑주소 등록
public class ServiceOkController extends HttpServlet {
	private static final long serialVersionUID = 1L;
		/* post방식일때는 doPost()메서드를 오버라이딩을 해서 호출한다.
		 * 
		 */
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");//브라우저에 출력되는 문자와 태그,
		//언어코딩 타입을 설정
		PrintWriter out = response.getWriter(); //출력스트림 객체 생성
		request.setCharacterEncoding("UTF-8");//post로 전송되는 한글을 안 깨지게 한다.
		
		String title = request.getParameter("title");
		String cont = request.getParameter("content");
		
		out.println("글제목 : <strong>"+title+"</strong><hr>");
		out.println("내용 : <strong>"+cont+"</strong><hr>");
		out.println("<a href='service_write'>입력</a>");
		
		out.close();//출력스트림을 닫는다.
	}

}
