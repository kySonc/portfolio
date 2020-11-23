package com.kysonc.dao.service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kysonc.dto.BbsDto;


// 페이지 요청 서비스 클래스
public class BbsService {
		private static BbsDto bbsDto = new BbsDto();; 
		private Connection con;
		private PreparedStatement pstmt;
		private ResultSet rs;
		private String sql;
		
	
	
		//DB에 접속 컨넥션 메소드
		public Connection getConnect() {
			String url = "jdbc:mysql://localhost:3306/portfolioDB?serverTimezone=Asia/Seoul&useSSL=false";
			String id = "root", pw = "1234";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, id, pw);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return con;
		}
		
		//JDBC 자원 닫는 메소드
		public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	
	//게시글 요청
	public List<BbsDto> getBbsList(){
		
		return getBbsList("field", "", 1);
	}
	
	//페이지 요청
	public List<BbsDto> getBbsList(int page){
		
		return getBbsList("field", "", page);
	}
	
	//검색어 또는 페이지 목록 표시 제한 요청	
	public List<BbsDto> getBbsList(String field/*BBSTITLE, ID*/, String query/*A*/, int page){
		List<BbsDto> list = new ArrayList<>();
		
		//1, 11, 21, 31 --> 등차 수열 an = 1+(page-1)*10
		//10, 20, 30, 40 --> page*10 1페이지 일 경우 10,
		try {
			
			if(field.equals("All")) {
				field = "";
				sql ="SELECT * FROM bbs WHERE CONCAT(id, bbsTitle, bbsContent, bbsName) LIKE ? ORDER BY bbsId DESC LIMIT ?, 5";
			}
			
			if(field.contentEquals("bbsTitle") || field.contentEquals("id")) {
				sql="SELECT * FROM bbs WHERE  "+field+" LIKE ? ORDER BY bbsId DESC LIMIT ?, 5";
			}
								
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+query+"%");
			pstmt.setInt(2, (page-1)*5);			
			rs = pstmt.executeQuery();			
			
			while (rs.next()) {
				BbsDto bbsDto = new BbsDto();
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsName(rs.getString("bbsName"));
				bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				bbsDto.setId(rs.getString("id"));
				list.add(bbsDto);
					
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		
		return list;
	}	
		
		
		//List<BbsDto> list= new ArrayList<>();
		
		//1, 11, 21, 31 --> 등차 수열 an = 1+(page-1)*10
		//10, 20, 30, 40 --> page*10 1페이지 일 경우 10,
		//String sql="SELECT * FROM bbs WHERE  "+field+" LIKE ? ORDER BY bbsId DESC LIMIT ?, 5";
		//try {			
			//con = getConnect();			
			//pstmt = con.prepareStatement(sql);
			//pstmt.setString(1, "%"+query+"%");
			//pstmt.setInt(2, (page-1)*5);			
			//rs = pstmt.executeQuery();			
			
			//while (rs.next()) {
				//BbsDto bbsDto = new BbsDto();
				//bbsDto.setBbsId(rs.getInt("bbsId"));
				//bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				//bbsDto.setBbsContent(rs.getString("bbsContent"));
				//bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				//bbsDto.setBbsHit(rs.getInt("bbsHit"));
				//bbsDto.setBbsName(rs.getString("bbsName"));
				//bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				//bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				//bbsDto.setId(rs.getString("id"));
				//list.add(bbsDto); 
			//}
			
		//} catch (Exception e) {
			//e.printStackTrace();
		//} finally {
			//close(con, pstmt, rs);
		//}
		//return list;
	//}
	
	//검색에대한 게시글 수
	public int getBbsCount() {
		
		return getBbsCount( "title", "");
	}
	
	// 검색에대한 게시글 수
	public int getBbsCount(String field, String query) {
		
		int searchCount = 0;
		
		if(field.equals("All")) {
			field = "";
			sql ="SELECT COUNT(BBSID) SEARCHCOUNT FROM bbs WHERE CONCAT(id, bbsTitle, bbsContent, bbsName) LIKE ? ORDER BY bbsId DESC";
		}
		
		if(field.contentEquals("bbsTitle") || field.contentEquals("id")) {
			sql="SELECT COUNT(BBSID) SEARCHCOUNT FROM bbs WHERE "+field+" LIKE ? ORDER BY bbsId DESC";
		}
		
		
		
		try {
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+query+"%");
			
			rs = pstmt.executeQuery();			
			
			if(rs.next()) {
				searchCount = rs.getInt("searchCount");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return searchCount;
	}
		
	
	
	//아이디 한개의 게시글
	public BbsDto getBbspageList(int bbsId) {
		
		
		String sql="SELECT * FROM BBS WHERE BBSID=?";

		try {			
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bbsId);
			rs = pstmt.executeQuery();			
			
			if (rs.next()) {				
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsName(rs.getString("bbsName"));
				bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				bbsDto.setId(rs.getString("id"));				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return bbsDto;
	}
	
	//해당 bbsId 의 다음 bbsId 얻기
	public BbsDto getBbsNextList(String bbsId) {
				
		String sql = "SELECT * FROM BBS WHERE BBSID BETWEEN ? AND BBSID LIMIT 0, 1"; //BBSID=1 보다 큰 BBSID 컬럼 구하기
		
		try {			
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bbsId);
			rs = pstmt.executeQuery();			
			
			if (rs.next()) {				
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsName(rs.getString("bbsName"));
				bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				bbsDto.setId(rs.getString("id"));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		
		return bbsDto;
	}
	
	//해당 bbsId 의 이전 bbsId 얻기
	public BbsDto getBbsPrevList(String bbsId) {
				
		String sql = "SELECT * FROM BBS WHERE BBSID BETWEEN BBSID AND ? ORDER BY BBSID DESC LIMIT 0, 1"; //BBSID=1 보다 작은 BBSID 컬럼 구하기
		
		try {			
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bbsId);
			rs = pstmt.executeQuery();			
			
			if (rs.next()) {				
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsName(rs.getString("bbsName"));
				bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				bbsDto.setId(rs.getString("id"));
		
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		
		return bbsDto;
	}
	
	//해당 bbsId의 마지막 bbsId 순번 구하기
	public BbsDto getBbsLastCoList(String bbsId) {
						
		String sql = "SELECT * FROM BBS WHERE ? ORDER BY BBSID DESC LIMIT 0, 1"; //BBSID=? 의 저장된 제일 큰 BBSID 구하기
				
		try {			
			con = getConnect();			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bbsId);
			rs = pstmt.executeQuery();			
			
			if (rs.next()) {				
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsName(rs.getString("bbsName"));
				bbsDto.setBbsEmail(rs.getString("bbsEmail"));
				bbsDto.setBbsPhone(rs.getString("bbsPhone"));
				bbsDto.setId(rs.getString("id"));					
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
				
		return bbsDto;
	}
	
	
	
}
