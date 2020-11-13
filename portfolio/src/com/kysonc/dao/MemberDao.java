package com.kysonc.dao;

import java.sql.*;

import com.kysonc.dto.MemberDto;

//회원 DB 테이블에 접근 서비스 클래스
public class MemberDao {
	private static MemberDao mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private MemberDao() {
		
	}
	
	// MemberDao 클래스 객체 생성 메소드
	public static synchronized MemberDao getInstance() {
		if (mDao == null) {
			mDao = new MemberDao();
		}
		return mDao;
	}
	
	//DB 접근 커넥션 메소드 
	public Connection getConnection() {
		String url = "jdbc:mysql://localhost:3306/great";
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
	
	// JDBC 자원닫기
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
	
	// 회원가입 메소드 (매개값으로 DTO클래스에 저장된 값을 테이블에 추가)
	public int join(MemberDto mDto) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO member").append(" VALUES (?,?,?,?)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getEmail());
			result = pstmt.executeUpdate(); //result = 1 리턴
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, null);
		}
		return result;
	}
	
	//login 입력받은 id 값의  PW를 가져와 입력된 PW와 비교 
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
					return 1; // 아이디와 비밀번호 값이 모두 같으면 1 리턴
				} else {
					return 0; // 아이디만 같고 비밀번호가 다르면 0 리턴
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close(con, pstmt, rs);
		}
		return -1; // 아이디부터 다르면 -1 리턴
	}
	
	//ID에 해당되는 member DB의 데이터를 지우는 메소드
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