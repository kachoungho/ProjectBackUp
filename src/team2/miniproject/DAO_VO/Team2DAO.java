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
				String DBnum = rs.getString("mem_num");		//090001
				String DBname = rs.getString("mem_name");	//이종상
				String DBpwd = rs.getString("mem_pwd");	//1234
				
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
					
					vo.setMem_num(rs.getString("mem_num")); // vo 학번
					vo.setMem_name(rs.getString("mem_name")); // 이종상
					vo.setMem_pwd(rs.getString("mem_pwd"));	// 1234
					
					list.add(vo);
				} while(rs.next());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			CloseUtil.close(rs);			CloseUtil.close(pstmt);			CloseUtil.close(conn);		}
		return list;
	}
	
	
	public List<membersVO> ListBasicDB(String mem_num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = null;
		StudentVO vo = new StudentVO();
		
		try {
			conn = getConnection();
			String sql = "select * from students where stu_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList();
				
				do {
					
					vo.setStu_num(rs.getString("stu_num"));
					vo.setStu_name(rs.getString("stu_name"));
					vo.setStu_pwd(rs.getString("stu_pwd"));
					vo.setStu_sex(rs.getString("stu_sex"));
					vo.setStu_birthday(rs.getString("stu_birthday"));
					vo.setStu_state(rs.getString("stu_state"));
					vo.setStu_professor(rs.getString("stu_professor"));
					vo.setStu_email(rs.getString("stu_email"));
					vo.setMajor(rs.getString("major"));
					vo.setSubmajor(rs.getString("submajor"));
					vo.setGrade(rs.getString("grade"));
					vo.setAddress(rs.getString("address"));
					vo.setTel(rs.getString("tel"));
					vo.setHome_tel(rs.getString("home_tel"));
					
					list.add(vo);
				} while(rs.next());
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			CloseUtil.close(rs);			CloseUtil.close(pstmt);			CloseUtil.close(conn);		}
		return list;
	}
	
	
	public List<membersVO> ListAdviserDB(String mem_num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		List list = null;
		employeeVO vo = new employeeVO();
		
		try {
			conn = getConnection();
			String sql = "select * from students where stu_num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs=pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList();
				String name = rs.getString("stu_professor");
				
				String sql2 = "select * from employee where emp_name=?";
				pstmt=conn.prepareStatement(sql2);
				pstmt.setString(1, name);
				rs2=pstmt.executeQuery();
				
				if(rs2.next()){
					vo.setEmp_num(rs2.getString("emp_num"));
					vo.setEmp_name(rs2.getString("emp_name"));
					vo.setEmp_pwd(rs2.getString("emp_pwd"));
					vo.setMajor(rs2.getString("major"));
					vo.setEmp_email(rs2.getString("emp_email"));
					vo.setTel(rs2.getString("tel"));
					
					list.add(vo);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {			CloseUtil.close(rs);			CloseUtil.close(pstmt);			CloseUtil.close(conn);		}
		return list;
	}
}
