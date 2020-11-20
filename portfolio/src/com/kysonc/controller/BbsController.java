package com.kysonc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kysonc.dao.service.BbsService;
import com.kysonc.dto.BbsDto;

@WebServlet("/bbs.do")
public class BbsController extends HttpServlet {
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
		
		//index.jsp의 폼 태그 확인 사용자 요청 bbs.do?f=bbsTitle&q=a
		
		//null값이 왔을 경우 기본 값을 어떻게 할 것인가 임시 변수 사용
		String field_ = req.getParameter("f"); // 검색폼의 키값 "f"를 요청받는다
		String query_ = req.getParameter("q"); // 검색폼의 키값 "q"를 요청받는다
		String page_ = req.getParameter("p"); // 검색폼의 키값 "p"를 요청받는다 ..INT로 하면 NULL를 못받는다
		
		//전달이 안됐을 경우 기본 값으로 사용 
		String field = "bbsTitle";
		
		//값이 전달되면 null이 아니거나 빈문자 열이 아닐 경우 전달 받은 param f 그게아니면 bbsTitle 값을 갖는다
		if(field_ != null && !field_.equals("")) {
			field = field_; 
		}else {
			field_ = "bbsTitle";
		}
						
		String query = "";
		
		//값이 전달되면 null이 아니거나 빈문자 열이 아닐 경우
		if(query_ != null && !query_.equals("")) {
			query = query_; 
		}
		
		int page = 1;
		
		//값이 전달되면 null이 아니거나 빈문자 열이 아닐 경우
		if(page_ != null && !page_.equals("")) {
			page = Integer.parseInt(page_); //String으로 전달되기 때문에 INT 형변환
		}
		
		BbsService service = new BbsService(); //service 객체 생성
		List<BbsDto> list = service.getBbsList(field, query, page); // 검색 목록 요청
		int searchCount = service.getBbsCount(field, query); // 검색 요청 게시글 수
		
		req.setAttribute("list", list);	
		req.setAttribute("searchCount", searchCount);
					
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/index.jsp"); //index.jsp(작성글 내용 보기) 이동
		rd.forward(req, resp);
		
	}

}
