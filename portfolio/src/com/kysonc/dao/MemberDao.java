package com.kysonc.dao;

import java.sql.*;

import com.kysonc.dto.MemberDto;

//
public class MemberDao {
	private static MemberDao mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private MemberDao() {
		
	}
	
	//MemberDao 클래스 객체 생성 메소드
	public static synchronized MemberDao getInstance() {
		if (mDao == null) {
			mDao = new MemberDao();
		}
		return mDao;
	}
	
	//DB에 접속 컨넥션 메소드
	public Connection getConnection() {
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
	
	//회원 가입 메소드
	public int join(MemberDto mDto) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO member").append(" VALUES (?,?,?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());			
			result = pstmt.executeUpdate(); //result = 1 由ы꽩
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, null);
		}
		return result;
	}
	
	//로그인 메소드
	public int login(String id, String pw) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("SELECT pw").append(" FROM member").append(" WHERE ID = ?");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				if(rs.getString("pw").equals(pw)) {
					return 1; 
				} else {
					return 0; 
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, rs);
		}
		return -1; 
	}

		//회원 탈퇴 메소드
		public String del(String id) {
			con = this.getConnection();
			String sql = "DELETE FROM member WHERE Id = ?";
			
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				result = pstmt.executeUpdate();				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				this.close(con, pstmt, null);
			}
			return null ;
		}

	
}