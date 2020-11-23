package com.kysonc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kysonc.dao.BbsDao;
import com.kysonc.dto.BbsDto;

@WebServlet("/bbsupdate.do")
public class BbsUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String bbsId = req.getParameter("bbsId");
		BbsDao bbsDao = BbsDao.getInstance();
		BbsDto bbsDto = new BbsDto();
		bbsDto = bbsDao.selectById(bbsId);
		
		req.setAttribute("bbsupdate", bbsDto);
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/contactCorrection.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
		String bbsId = req.getParameter("bbsId");		
		String bbsTitle = req.getParameter("bbsTitle");
		String bbsContent = req.getParameter("bbsContent");
		String bbsName = req.getParameter("bbsName");
		String bbsEmail = req.getParameter("bbsEmail");
		String bbsPhone = req.getParameter("bbsPhone");
		
		BbsDao bbsDao = BbsDao.getInstance();
		BbsDto bbsDto = new BbsDto();
		bbsDto.setBbsId(Integer.parseInt(bbsId));		
		bbsDto.setBbsTitle(bbsTitle);
		bbsDto.setBbsContent(bbsContent);
		bbsDto.setBbsName(bbsName);
		bbsDto.setBbsEmail(bbsEmail);
		bbsDto.setBbsPhone(bbsPhone);
		 
		int result = bbsDao.update(bbsDto);
		System.out.println("게시글 수정 :" + result);
		resp.sendRedirect("bbs.do#notice");
		
	}
	
}