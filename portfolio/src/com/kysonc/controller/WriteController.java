package com.kysonc.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.BbsDao;
import com.kysonc.dto.BbsDto;

@WebServlet("/write.do")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/index.jsp#notice");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String sessionID = (String) session.getAttribute("sessionID");
		if (sessionID == null) { //sessionID가 null경우 비회원으로 입력
			sessionID = "비회원";
		}
		
		String bbsCategory = req.getParameter("bbsCategory");
		String bbsTitle = req.getParameter("bbsTitle");
		String bbsContent = req.getParameter("bbsContent");
		
		BbsDao bbsDao = BbsDao.getInstance();
		BbsDto bbsDto = new BbsDto();
		bbsDto.setBbsId(bbsDao.nextval() + 1); //BBSID 최대값을 구해 +1 입력
		bbsDto.setBbsCategory(bbsCategory);
		bbsDto.setBbsTitle(bbsTitle);
		bbsDto.setBbsContent(bbsContent);		
		bbsDto.setId(sessionID);

		int wResult = bbsDao.write(bbsDto); //bbsDto에 저장된 값을 DB에 삽입 결과값 저장
		System.out.println(wResult);
		resp.sendRedirect("index.do#notice"); //BbsController로 이동 후 게시판 목록으로 이동
	}
	
}