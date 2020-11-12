package com.kysonc.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.MemberDao;


@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/join.jsp"); // login 보여주는 페이지 
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		MemberDao mDao = MemberDao.getInstance();
		int loginResult = mDao.login(id, pw); //입력된 파라미터 값을 login 메소드로 확인 결과값 저장
		
		if (loginResult == 1) {
			req.setAttribute("loginResult", loginResult);
			HttpSession session = req.getSession();
			session.setAttribute("sessionID", id);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/index.jsp"); //loginResult 값과 sessionID 값을 가지고 index 페이지로 이동
			rd.forward(req, resp);
		} else {
			req.setAttribute("loginResult", loginResult);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/join.jsp"); //-1 또는 0 을 가지고 다시 login 페이지로 이동(아이디 혹은 비밀번호가 틀렸습니다)
			rd.forward(req, resp);
		}
		
	}
	
}