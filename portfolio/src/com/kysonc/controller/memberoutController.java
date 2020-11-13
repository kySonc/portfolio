package com.kysonc.controller;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


import com.kysonc.dao.MemberDao;

//member 삭제 처리 클래스
@WebServlet("/memberout.do")
public class memberoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id= (String)session.getAttribute("sessionID");
		
		MemberDao memberDao = MemberDao.getInstance();
		String result = memberDao.del(id); //DB에 저장된 정보 삭제
		
		if(result == null) {
			session.invalidate(); //저장된 세션을 삭제한다
		}

		resp.sendRedirect("index.do"); // 홈 페이지 이동
	}
	
}