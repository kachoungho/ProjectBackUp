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
				String DBnum = rs.getString("mem_num"); // 090001
				String DBname = rs.getString("mem_name"); // 이종상
				String DBpwd = rs.getString("mem_pwd"); // 1234

				if (DBnum.equals(mem_num) && DBpwd.equals(mem_pwd)) {
					if (mem_num.length() == 5) {//
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
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return result;
	}

	public String ListloginDB(String mem_num, String mem_pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String name = null;
		membersVO vo = new membersVO();

		try {
			conn = getConnection();
			String sql1 = "select * from members where mem_num=? and mem_pwd = ?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, mem_num);
			pstmt.setString(2, mem_pwd);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				name = rs.getString("mem_name");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return name;
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
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

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
				} while (rs.next());
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
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
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();
				String name = rs.getString("stu_professor");

				String sql2 = "select * from employee where emp_name=?";
				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, name);
				rs2 = pstmt.executeQuery();

				if (rs2.next()) {
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
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return list;
	}

	public List<membersVO> ListAdminBasicDB(String mem_num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = null;
		employeeVO vo = new employeeVO();

		try {
			conn = getConnection();
			String sql = "select * from employee where emp_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();

				do {

					vo.setEmp_num(rs.getString("emp_num"));
					vo.setEmp_name(rs.getString("emp_name"));
					vo.setEmp_pwd(rs.getString("emp_pwd"));
					vo.setMajor(rs.getString("major"));
					vo.setEmp_grade(rs.getString("emp_grade"));
					vo.setMoney(rs.getString("money"));
					vo.setMon_lev(rs.getString("mon_lev"));
					vo.setEmp_email(rs.getString("emp_email"));
					vo.setTel(rs.getString("tel"));

					list.add(vo);
				} while (rs.next());
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return list;
	}

	public ArrayList<StudentVO> getStudentData(String major) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<StudentVO> list = new ArrayList<StudentVO>();

		String sql = "select * from students where major = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, major);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				StudentVO vo2 = new StudentVO();

				vo2.setStu_num(rs.getString("stu_num"));
				vo2.setStu_name(rs.getString("stu_name"));
				vo2.setStu_pwd(rs.getString("stu_pwd"));
				vo2.setStu_sex(rs.getString("stu_sex"));
				vo2.setStu_birthday(rs.getString("stu_birthday"));
				vo2.setStu_state(rs.getString("stu_state"));
				vo2.setStu_professor(rs.getString("stu_professor"));
				vo2.setStu_email(rs.getString("stu_email"));
				vo2.setMajor(rs.getString("major"));
				vo2.setSubmajor(rs.getString("submajor"));
				vo2.setGrade(rs.getString("grade"));
				vo2.setAddress(rs.getString("address"));
				vo2.setTel(rs.getString("tel"));
				vo2.setHome_tel(rs.getString("home_tel"));

				list.add(vo2);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

		return list;
	}

	public ArrayList<SubjectVO> getSubjectData(String pick) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SubjectVO> list = new ArrayList<SubjectVO>();

		String sql = "select * from subject where sub_code like ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pick);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SubjectVO vo = new SubjectVO();

				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_time(rs.getString("sub_time"));

				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

		return list;
	}

	public void InsertPickData(String sub_code, String mem_num) { /*ArrayList<PickSubjectVO>*/
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ArrayList<PickSubjectVO> list = new ArrayList<PickSubjectVO>();
		SubjectVO subvo = new SubjectVO();

		try {
			String sql = "select * from subject where sub_code = ?";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sub_code);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				String sql2 = "insert into picksubject(stu_num, sub_code, sub_name, sub_hakjum, emp_name, sub_time) "
						+ "values(?, ?, ?, ?, ?, ?) ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, mem_num);
				pstmt2.setString(2, rs.getString("sub_code"));
				pstmt2.setString(3, rs.getString("sub_name"));
				pstmt2.setString(4, rs.getString("sub_hakjum"));
				pstmt2.setString(5, rs.getString("emp_name"));
				pstmt2.setString(6, rs.getString("sub_time"));
				pstmt2.executeUpdate();

				/*String sql3 = "select * from picksubject";
				pstmt3 = conn.prepareStatement(sql3);
				rs2 = pstmt3.executeQuery();

				while (rs2.next()) {
					PickSubjectVO pickvo = new PickSubjectVO();

					pickvo.setStu_num(rs2.getString("stu_num"));
					pickvo.setSub_code(rs2.getString("sub_code"));
					pickvo.setSub_name(rs2.getString("sub_name"));
					pickvo.setSub_hakjum(rs2.getString("sub_hakjum"));
					pickvo.setEmp_name(rs2.getString("emp_name"));
					pickvo.setSub_time(rs2.getString("sub_time"));

					list.add(pickvo);

				}*/
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

		/*return list;*/
	}
	
	public void PickDelete(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/*String sql = ;*/
		
		try {
			conn = getConnection();
			/*System.out.println("DAO에 sub_code 가 왓나 : " + sub_code);*/
			pstmt = conn.prepareStatement("delete from picksubject where sub_code = ?");
			
			pstmt.setString(1, sub_code);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

	}
	
	
	public ArrayList<PickSubjectVO> PickData(PickSubjectVO vo, String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<PickSubjectVO> list = new ArrayList<PickSubjectVO>();

		String sql = "select * from picksubject where stu_num = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				vo = new PickSubjectVO();
				
				vo.setStu_num(rs.getString("stu_num"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_time(rs.getString("sub_time"));
				
				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

		return list;
	}
	
	
	public ArrayList<JanghakVO> getJanghak(JanghakVO vo, String mem_num){
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      ArrayList<JanghakVO> list = new ArrayList<JanghakVO>();
	      
	      String sql = "select * from janghak where stu_num = ? ";
	      
	      try {
	         conn = getConnection();
	         pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1, mem_num);
	         rs=pstmt.executeQuery();
	         
	         while(rs.next()){
	            JanghakVO vo2 = new JanghakVO();
	            
				vo2.setJh_name(rs.getString("jh_name"));
				vo2.setJh_term(rs.getString("jh_term"));
				vo2.setJh_year(rs.getString("jh_year"));
				vo2.setMoney_ip(rs.getInt("money_ip"));
				vo2.setMoney_su(rs.getInt("money_su"));
	            
	            list.add(vo2);
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {         CloseUtil.close(rs);         CloseUtil.close(pstmt);         CloseUtil.close(conn);      }
	      
	      return list;
	   }
	
	
	public ArrayList<StuPickVO> getPickList(String major) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/*ArrayList<PickSubjectVO> list = new ArrayList<PickSubjectVO>();*/
		ArrayList<StuPickVO> list = new ArrayList<StuPickVO>();
		StringBuffer sb = new StringBuffer();
	

		sb.append("select  STUDENTS.MAJOR, STUDENTS.STU_NAME, picksubject.* ");
		sb.append(" from STUDENTS join picksubject ");
		sb.append(" on STUDENTS.STU_NUM = picksubject.stu_num where major = ? ");
		System.out.println("실행 됫나?-1-1");
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, major);
			rs = pstmt.executeQuery();
			System.out.println("실행 됫나?00");
			while (rs.next()) {
				StuPickVO vo = new StuPickVO();
				
				System.out.println("실행 됫나?11");
				vo.setMajor(rs.getString("major"));
				vo.setStu_name(rs.getString("stu_name"));
				vo.setStu_num(rs.getString("stu_num"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_time(rs.getString("sub_time"));
				System.out.println("실행 됫나?22");
				list.add(vo);
				
				System.out.println("실행 됫나?33");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		System.out.println("실행 됫나?44");
		return list;
	}
	
}
