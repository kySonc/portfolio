package com.kysonc.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.kysonc.dto.BbsDto;


public class BbsDao {
	private static BbsDao bbsDao = new BbsDao(); //�ϳ��� ��ü�� ����
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;
	
	private BbsDao() {
		super();
	}
	
	
	//BBSDAO 클래스를 사용 객체 생성 메소드
	public static BbsDao getInstance() {
		return bbsDao;
	}
	
	//DB에 접속 컨넥션 메소드
	public Connection getConnect() {
		String url = "jdbc:mysql://localhost:3306/great?serverTimezone=Asia/Seoul&useSSL=false";
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
	
	//BBSID 프라이미어 키 최대값 구하는 메소드
	public int nextval() {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("SELECT MAX(bbsId) ").append("FROM bbs");
		
		try {
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getInt("MAX(bbsId)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return result;
	}
	
	//DB에 게시글 정보 저장 메소드
	public int write(BbsDto bbsDto) {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO bbs ");
		query.append("(bbsId, bbsTitle, bbsContent, bbsDate, bbsHit, bbsCategory, id) ");
		query.append("VALUES (?, ?, ?, now(), 0, ?, ?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, bbsDto.getBbsId());
			pstmt.setString(2, bbsDto.getBbsTitle());
			pstmt.setString(3, bbsDto.getBbsContent());
			pstmt.setString(4, bbsDto.getBbsCategory());
			pstmt.setString(5, bbsDto.getId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}
	
	//DB에 저장 된 모든 게시글 목록을 가져오는 메소드
	public List<BbsDto> selectList(){
		List<BbsDto> list = new ArrayList<>();
		
		try {
			con = getConnect();
			String sql ="SELECT * FROM bbs ORDER BY bbsId DESC";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				BbsDto bbsDto = new BbsDto();
				bbsDto.setBbsId(rs.getInt("bbsId"));
				bbsDto.setBbsTitle(rs.getString("bbsTitle"));
				bbsDto.setBbsContent(rs.getString("bbsContent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
				bbsDto.setBbsHit(rs.getInt("bbsHit"));
				bbsDto.setBbsCategory(rs.getString("bbsCategory"));
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
	
	// 조회수 1증가 메소드
	public int hitUpdate(String bbsId) {
		con = getConnect();
		String sql = "UPDATE bbs SET bbsHit = bbsHit + 1 WHERE bbsId = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bbsId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;  
	}
	
	//BBSID에 해당 되는 글을 DB에서 가져오는 메소드
	public BbsDto selectById(String bbsId) {
		BbsDto bbsDto = new BbsDto();
		con = getConnect();
		String sql = "SELECT * FROM bbs WHERE bbsId = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bbsId);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				bbsDto.setBbsId(rs.getInt("bbsid"));
				bbsDto.setBbsTitle(rs.getString("bbstitle"));
				bbsDto.setBbsContent(rs.getString("bbscontent"));
				bbsDto.setBbsDate(rs.getTimestamp("bbsdate"));
				bbsDto.setBbsHit(rs.getInt("bbshit"));
				bbsDto.setBbsCategory(rs.getString("bbscategory"));
				bbsDto.setId(rs.getString("id"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return bbsDto;
	}
	
	//BBSID에 해당되는 게시글을  DB에서 지우는 메소드
	public int del(int bbsId) {
		con = getConnect();
		String sql = "DELETE FROM bbs WHERE bbsId = ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bbsId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}
	
	//게시글 수정 메소드
	public int update(BbsDto bbsDto) {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("UPDATE bbs SET bbsTitle = ?, ");
		query.append("bbsContent = ?, ");
		query.append("bbsCategory = ? ");
		query.append("WHERE bbsId = ?");
		
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, bbsDto.getBbsTitle());
			pstmt.setString(2, bbsDto.getBbsContent());
			pstmt.setString(3, bbsDto.getBbsCategory());
			pstmt.setInt(4, bbsDto.getBbsId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

}