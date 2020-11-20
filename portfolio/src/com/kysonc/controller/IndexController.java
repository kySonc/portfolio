package com.kysonc.controller;

import java.io.IOException;
//import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.kysonc.dao.BbsDao;
//import com.kysonc.dto.BbsDto;


@WebServlet("/index.do")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	public void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//BbsDao bbsDao = BbsDao.getInstance();
		
		//List<BbsDto> list = bbsDao.selectList();			
		//req.setAttribute("list", list);	
					
		RequestDispatcher rd = req.getRequestDispatcher("bbs.do"); 
		rd.forward(req, resp);
		
	}

}
