package com.kysonc.controller;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.BbsDao;

//게시글 삭제 처리 클래스
@WebServlet("/bbsdelete.do")
public class BbsDeleteController extends HttpServlet {
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
		String bbsId = req.getParameter("bbsId");
		BbsDao bbsDao = BbsDao.getInstance();
		bbsDao.del(Integer.parseInt(bbsId)); //해당 글 삭제 메소드 호출

		resp.sendRedirect("bbs.do#notice"); // 게시판 목록 페이지 이동
	}
	
}