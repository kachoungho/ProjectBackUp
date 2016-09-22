package team2.miniproject.DAO_VO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbclose.util.CloseUtil;

public class Team2DAO {

	public Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		Context env = (Context) ctx.lookup("java:comp/env");
		DataSource ds = (DataSource) env.lookup("jdbc:miniProjectDB");

		return ds.getConnection();
	}

	private static Team2DAO instance = new Team2DAO();

	public static Team2DAO getInstance() {
		return instance;
	}
/* Table 변경전 loginDB
	public int loginDB(String stu_num, String stu_pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;

		String sql = "select * from students where stu_num=? and stu_pwd = ?";
		Team2VO vo = new Team2VO();

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			pstmt.setString(2, stu_pwd);
			rs = pstmt.executeQuery();
			

			if (rs.next()) {
				String DBnum = rs.getString("stu_num");
				String DBpwd = rs.getString("stu_pwd");

				if (DBnum.equals(stu_num) && DBpwd.equals(stu_pwd)) {
					if(stu_num.equals("admin") && stu_pwd.equals("admin")) {
						result = 2;
						System.out.println("���� �α��� result : " + result);
					} else {
						result = 1;
						System.out.println("���� �α��� result : " + result);
					}					
				} else {
					result = 5;
					System.out.println("�α��� ���� result : " + result);
				}

			} else {
				vo = null;
			}
			

			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return result;
	}
	*/
	
	// Table 변경후 loginDB
	public int loginDB(String mem_num, String mem_pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;

		
		String sql2 = "select * from members where mem_num=? and mem_pwd = ?";
		membersVO vo = new membersVO();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, mem_num);
			pstmt.setString(2, mem_pwd);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				String DBnum = rs.getString("mem_num");
				String DBname = rs.getString("mem_name");
				String DBpwd = rs.getString("mem_pwd");
				
				if (DBnum.equals(mem_num) && DBpwd.equals(mem_pwd)) {
					if(mem_num.length() == 5) {//
						result = 2;
						System.out.println("admin로그인 result : " + result);
					} else {
						result = 1;
						System.out.println("user로그인 result : " + result);
					}					
				} else {
					result = 5;
					System.out.println("로그인 실패 result : " + result);
				}
			} else {
				vo = null;
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			CloseUtil.close(rs);			CloseUtil.close(pstmt);			CloseUtil.close(conn);		}
		return result;
	}
	
	public List<membersVO> ListloginDB(String mem_num, String mem_pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = null;
		membersVO vo = new membersVO();
		
		try {
			conn = getConnection();
			String sql1 = "select * from members where mem_num=? and mem_pwd = ?";
			pstmt=conn.prepareStatement(sql1);
			pstmt.setString(1, mem_num);
			pstmt.setString(2, mem_pwd);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList(3);
				
				do {
					
					vo.setMem_num(rs.getString("mem_num"));
					vo.setMem_name(rs.getString("mem_name"));
					vo.setMem_pwd(rs.getString("mem_pwd"));
					
					list.add(vo);
				} while(rs.next());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			CloseUtil.close(rs);			CloseUtil.close(pstmt);			CloseUtil.close(conn);		}
		return list;
	}
}
