package net.daum.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.daum.dao.TestDAOImpl;
import net.daum.vo.TestVO;

public class ServiceListController extends HttpServlet {
	/* get으로 접근할 때는 doGet()메서드를 오버라이딩을 해서 호출한다.
	 * 
	 * get으로 인식하는 경우 예)
	 *  1.브라우저에 직접 실행하는 경우
	 *  2.브라우저 주소창에 매핑주소를 직접 입력하고 실행하는 경우
	 *  3.form태그의 method="get"방식인 경우나 method속성을 생략하는 경우도 기본값이 get이다.
	 *  4.자바 스크립트의 location객체에 의해서 이동하는 경우
	 *  5.jsp의 response.sendRedirect()에 의해서 이동하는 경우
	 *  6.JSTL c:redirect에 의해서 이동하는 경우
	 *  7.하이퍼링크에 의해서 이동하는 경우
	 *  8.비동기식 아작스 get방식인 경우
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		TestDAOImpl tdao = new TestDAOImpl();
		List<TestVO> tlist = tdao.getTestList(); //목록을 가져온다.
		
		request.setAttribute("tlist",tlist);//tlist 키이름에 tlist목록을 저장
		
		RequestDispatcher tListForward = request.getRequestDispatcher("./views/tList.jsp");
		tListForward.forward(request, response);
		/* RequestDispatcher forward()메서드의 특징)
		 *   setAttribute("tlist",tlist) 메서드에 의해서 tlist키이름에 저장된 목록값을 유지할 수 있다.
		 *   하지만 response.sendRedirect()메서드에 의해서 이동하면 새로운 매핑주소로 이동하기 때문에
		 *   tlist키이름 목록값을 유지하지 못하고 잃어 버린다.
		 *   
		 *   기존 매핑주소도 유지한다.
		 *   
		 */
	}
	
	
}
