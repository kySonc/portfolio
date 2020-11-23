package com.kysonc.controller;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logout.do")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	//GET, POST 구분 없이 수행하는 메소드
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(); //내장 객체 session()메소드 이용
		session.invalidate(); //현재 세션의 모든 정보를 제거
		System.out.println("로그아웃성공");
		RequestDispatcher rd = req.getRequestDispatcher("index.do"); //index.do 이동
		rd.forward(req, resp);		
	}
	
}