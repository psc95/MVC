package net.daum.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/service_write") // service_write 매핑주소 등록
public class ServiceWriterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       /* get or post에 상관없이 service()메서드를 오버라이딩을 해서 호출한다. 양쪽 방식 다 실행한다는
        * 의미이다.
        */
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher fw = request.getRequestDispatcher("./views/sw.jsp");
		//뷰페이지 경로 설정
		fw.forward(request, response);//해당 뷰페이지로 이동
		/* RequestDispatcher 서블릿 forward()의 특징)
		 *  기존 url-pattern 즉 매핑주소를 유지하면서 해당 뷰페이지로 이동한다.
		 */
	}

}
