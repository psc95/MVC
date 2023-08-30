package net.daum.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstGetController
 */
@WebServlet("/start") //start매핑주소 등록 => 매핑주소란 브라우저 주소창에 실행되는 주소값을 말한다.
public class FirstGetController extends HttpServlet {
	 /* 서블릿 자바 클래스 특징)
     *   1.서블릿은 MVC에서 C에 해당하는 컨트롤러 역할을 한다.
     *   2.서블릿은 온라인상에서 누구나 다 접근가능하게 public접근지정자로 선언한다.
     *   3.HttpServlet클래스로 부터 상속을 받는다.
     *   4.get으로 접근할 때는 doGet()메서드를 오버라이딩을 해서 호출한다.
     *   5.HttpServletRequest서블릿의 역할은 사용자 폼에서 입력한 정보를 서버로 가져오는 것이다.
     *   6.HttpServletResponse서블릿의 역할은 사용자 정보 요청을 받은 것에 대한 정보를 서버에서 찾아서 가공하여
     *   사용자가 원하는 정보를 브라우저에 응답하는 것을 말한다.
     */
	
	
	
	private static final long serialVersionUID = 1L;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstGetController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");//브라우저에 출력되는 문자와 태그
		//,언어코딩 타입을 설정
		PrintWriter out=response.getWriter();//출력스트림 out을 생성
		
		out.println("<h3>최초 서블릿 실행</h3>");
		out.close();//출력스트림을 닫는다.
	}

}
