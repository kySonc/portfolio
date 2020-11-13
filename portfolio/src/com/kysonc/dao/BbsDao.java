package com.kysonc.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.kysonc.dto.BbsDto;


public class BbsDao {
	private static BbsDao bbsDao = new BbsDao(); //占싹놂옙占쏙옙 占쏙옙체占쏙옙 占쏙옙占쏙옙
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;
	
	
	private BbsDao() {
				
	}
	
	
	//BBSDAO �겢�옒�뒪瑜� �궗�슜 媛앹껜 �깮�꽦 硫붿냼�뱶
	public static BbsDao getInstance() {
		return bbsDao;
	}
	
	//DB�뿉 �젒�냽 而⑤꽖�뀡 硫붿냼�뱶
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
	
	//JDBC �옄�썝 �떕�뒗 硫붿냼�뱶
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
	
	//BBSID �봽�씪�씠誘몄뼱 �궎 理쒕�媛� 援ы븯�뒗 硫붿냼�뱶
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
	
	//DB�뿉 寃뚯떆湲� �젙蹂� ���옣 硫붿냼�뱶
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
	
	//DB�뿉 ���옣 �맂 紐⑤뱺 寃뚯떆湲� 紐⑸줉�쓣 媛��졇�삤�뒗 硫붿냼�뱶
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
	
	// 議고쉶�닔 1利앷� 硫붿냼�뱶
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
	
	//BBSID�뿉 �빐�떦 �릺�뒗 湲��쓣 DB�뿉�꽌 媛��졇�삤�뒗 硫붿냼�뱶
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
	
	//BBSID�뿉 �빐�떦�릺�뒗 寃뚯떆湲��쓣  DB�뿉�꽌 吏��슦�뒗 硫붿냼�뱶
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
	
	//寃뚯떆湲� �닔�젙 硫붿냼�뱶
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
	
	//Scalar �븿�닔 寃뚯떆湲� 珥� 媛쒖닔
	public int getCount() {
		int bbscount = 0;
		con = getConnect();
		String sql = "SELECT COUNT(bbsID) bbscount FROM bbs";
		
		try {
			pstmt = con.prepareStatement(sql);
	
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bbscount = rs.getInt("bbscount");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return bbscount;		
	}	

	
}