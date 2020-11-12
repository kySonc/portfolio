package com.kysonc.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.MemberDao;
import com.kysonc.dto.MemberDto;

@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// GET방식으로 접근
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/join.jsp"); //전송한 데이터 그대로 SIGNUP>JSP 이동
		rd.forward(req, resp);
	}
	
	// POST 방식으로 접근 (signUp.jsp 페이지에서 가져온 파라미터 값을 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		MemberDao mDao = MemberDao.getInstance(); //회원가입 메소드로 DB에 저장할수 있는 객체 생성
		MemberDto mDto = new MemberDto(); //회원 정보를 저장하는 클래스 객체 생성
		mDto.setId(id); //sigUp.jsp 페이지에서 넘겨 받은 파라미터 값을 MemberDto 클래스에 담는다
		mDto.setPw(pw); 
		mDto.setName(name);
		mDto.setEmail(email);
		int joinResult = mDao.join(mDto); //회원가입 메소드를 이용 BD에 저장 결과값(result=1)을 저장
		
		//DB 저장 성공값이 1일때 
		if (joinResult == 1) {
			req.setAttribute("joinResult", joinResult); //joinRsesult = 1
			HttpSession session = req.getSession();
			session.setAttribute("sessionID", id); //sessionID에 입력된 파라미터 id를 저장
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/index.jsp"); //입력된 데이터를 가지고 로그인 된 상태로 메인화면 index페이지로 이동 
			rd.forward(req, resp);
		} else {
			req.setAttribute("joinResult", 0);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/join.jsp"); //0(아이디가 중복)을 가지고 다시  회원가입을 할 수 있게 회원가입 페이지로 이동
			rd.forward(req, resp);
		}
	}
	
}