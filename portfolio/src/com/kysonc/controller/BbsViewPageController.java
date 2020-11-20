package com.kysonc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.BbsDao;
import com.kysonc.dao.service.BbsService;
import com.kysonc.dto.BbsDto;


// Title 클릭 작성글 내용 보기 처리 클래스
@WebServlet("/bbsviewPage.do")
public class BbsViewPageController extends HttpServlet {
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
		BbsService service = new BbsService(); //service 객체 생성
		BbsDao bbsDao = BbsDao.getInstance();
		BbsDto bbsDto = new BbsDto();
		bbsDao.hitUpdate(bbsId); //해당 게시글 조회수 +1 늘리고 저장
				
		bbsDto = service.getBbsNextList(bbsId); //해당 bbsId의 시작 다음 bbsId 순번 구하기
		req.setAttribute("bbsview", bbsDto);
													
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/contactView.jsp"); //BBSVIEW를 가지고 contactView.jsp(작성글 내용 보기) 이동
		rd.forward(req, resp);
	}
	
	
}