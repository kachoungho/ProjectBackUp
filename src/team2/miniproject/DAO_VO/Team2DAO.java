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

	// 로그인 판단(USER, ADMIN, 실패) method
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
					if (mem_num.length() == 5) {
						if (DBnum.equals("40001") || DBnum.equals("40002") || DBnum.equals("40003")) {
							result = 3;
							System.out.println("Main admin로그인 result : " + result);
						} else {
							result = 2;
							System.out.println("admin로그인 result : " + result);
						}
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

	// 로그인한 인원의 이름 얻어오는 method
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

	public void InsertPickData(String sub_code,
			String mem_num) { /* ArrayList<PickSubjectVO> */
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

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
	}

	public void PickDelete(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
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

	public ArrayList<JanghakVO> getJanghak(JanghakVO vo, String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<JanghakVO> list = new ArrayList<JanghakVO>();

		String sql = "select * from janghak where stu_num = ? ";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
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
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}

		return list;
	}

	public ArrayList<StuPickVO> getPickList(String major) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/* ArrayList<PickSubjectVO> list = new ArrayList<PickSubjectVO>(); */
		ArrayList<StuPickVO> list = new ArrayList<StuPickVO>();
		StringBuffer sb = new StringBuffer();

		sb.append("select  STUDENTS.MAJOR, STUDENTS.STU_NAME, picksubject.* ");
		sb.append(" from STUDENTS join picksubject ");
		sb.append(" on STUDENTS.STU_NUM = picksubject.stu_num where major = ? ");
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, major);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				StuPickVO vo = new StuPickVO();

				vo.setMajor(rs.getString("major"));
				vo.setStu_name(rs.getString("stu_name"));
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

	public ArrayList<SubjectVO> getSeasonData(String kyo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SubjectVO> list = new ArrayList<SubjectVO>();

		String sql = "select * from subject where sub_code like ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kyo);
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

	public void InsertPickSeason(String sub_code,
			String mem_num) { /* ArrayList<PickSubjectVO> */
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
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

				String sql2 = "insert into pickseason(stu_num, sub_code, sub_name, sub_hakjum, emp_name, sub_time) "
						+ "values(?, ?, ?, ?, ?, ?) ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, mem_num);
				pstmt2.setString(2, rs.getString("sub_code"));
				pstmt2.setString(3, rs.getString("sub_name"));
				pstmt2.setString(4, rs.getString("sub_hakjum"));
				pstmt2.setString(5, rs.getString("emp_name"));
				pstmt2.setString(6, rs.getString("sub_time"));
				pstmt2.executeUpdate();

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
	}

	public void SeasonDelete(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		/* String sql = ; */

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from pickseason where sub_code = ?");

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

	public ArrayList<PickSubjectVO> PickSeason(PickSubjectVO vo, String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<PickSubjectVO> list = new ArrayList<PickSubjectVO>();

		String sql = "select * from pickseason where stu_num = ?";

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

	public List ListReturnSemester(String stu_num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = null;
		StudentVO vo = new StudentVO();

		try {
			conn = getConnection();
			String sql = "select * from students where stu_num=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();

				do {
					vo.setStu_num(rs.getString("stu_num"));
					vo.setStu_name(rs.getString("stu_name"));
					vo.setStu_birthday(rs.getString("stu_birthday"));
					vo.setStu_professor(rs.getString("stu_professor"));
					vo.setStu_email(rs.getString("stu_email"));
					vo.setMajor(rs.getString("major"));
					vo.setAddress(rs.getString("address"));
					vo.setGrade(rs.getString("grade"));
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

	// 복학신청서 method
	public int G_b_SchoolPro(temporary_absenceReturnVO vo, String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		temporary_absenceReturnVO vo2 = new temporary_absenceReturnVO();
		int result = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from students where stu_num = ? ");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String sql2 = "insert into temporary_absenceReturn(stu_num, stu_name, stu_grade, major, stu_birthday, stu_professor, stu_email, address, tel, return_semester)"
						+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";

				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, mem_num);
				pstmt.setString(2, rs.getString("stu_name"));
				pstmt.setString(3, rs.getString("grade"));
				pstmt.setString(4, rs.getString("major"));
				pstmt.setString(5, rs.getString("stu_birthday"));
				pstmt.setString(6, rs.getString("stu_professor"));
				pstmt.setString(7, vo.getStu_email());
				pstmt.setString(8, vo.getAddress());
				pstmt.setString(9, vo.getTel());
				pstmt.setString(10, vo.getReturn_semester());

				pstmt.executeUpdate();

				result = 0;
				System.out.println("신청 성공");

			} else {
				result = 1;
				System.out.println("신청 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(conn);
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
		}
		return result;
	}

	// 관리자 개인정보 수정 method
	public int adminBasic_update(String mem_num, employeeVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs1 = null;
		List list = null;
		int check = -1;

		try {
			conn = getConnection();

			String sql1 = "select * from employee where emp_num = ?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, mem_num);
			rs1 = pstmt.executeQuery();

			if (rs1.next()) {
				String sql2 = "update employee set major=?, " + "emp_grade=?, mon_lev=?, tel=?, "
						+ "emp_email=?, money=?, emp_pwd=? where emp_num=? ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, vo.getMajor());
				pstmt2.setString(2, vo.getEmp_grade());
				pstmt2.setString(3, vo.getMon_lev());
				pstmt2.setString(4, vo.getTel());
				pstmt2.setString(5, vo.getEmp_email());
				pstmt2.setString(6, vo.getMoney());
				pstmt2.setString(7, vo.getEmp_pwd());
				pstmt2.setString(8, mem_num);

				pstmt2.executeUpdate();
				check = 0;
				System.out.println("업데이트 성공");
			} else {
				check = 1;
				System.out.println("업데이트 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs1);
			CloseUtil.close(pstmt);
			CloseUtil.close(pstmt2);
			CloseUtil.close(conn);
		}

		return check;
	}

	// 성적조회(금학기) method
	public ArrayList<CurrentSungJukVO> ListCurrentGradeDB(String mem_num) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;

		ArrayList<CurrentSungJukVO> list = new ArrayList<CurrentSungJukVO>();

		try {
			conn = getConnection();
			String sql1 = "select grade, term from students where stu_num=?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String sql2 = "select * from sungjuk where stu_num = ? and sj_grade = ? and sj_term = ?";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, mem_num);
				pstmt2.setString(2, rs.getString("grade"));
				pstmt2.setString(3, rs.getString("term"));
				rs2 = pstmt2.executeQuery();

				if (rs2.next()) {
					do {
						CurrentSungJukVO vo = new CurrentSungJukVO();
						vo.setStu_num(rs2.getString("stu_num"));
						vo.setSj_year(rs2.getString("sj_year"));
						vo.setSj_grade(rs2.getString("sj_grade"));
						vo.setSj_term(rs2.getString("sj_term"));
						vo.setSub_grade(rs2.getString("sub_grade"));
						vo.setSub_code(rs2.getString("sub_code"));
						vo.setSub_name(rs2.getString("sub_name"));
						vo.setSub_hakjum(rs2.getString("sub_hakjum"));
						vo.setEmp_name(rs2.getString("emp_name"));

						list.add(vo);
					} while (rs2.next());
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(rs2);
			CloseUtil.close(pstmt);
			CloseUtil.close(pstmt2);
			CloseUtil.close(conn);
		}
		return list;
	}

	// 학생 개인정보 수정 method
	public int update(String mem_num, StudentVO vo) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sb = new StringBuffer();
		int result = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from STUDENTS where stu_num=?");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();
			if (rs.next()) {

				sb.append("update students set Tel=?, stu_email=?, Address=?, Home_Tel=? where stu_num =?");
				pstmt = conn.prepareStatement(sb.toString());

				pstmt.setString(1, vo.getTel());
				pstmt.setString(2, vo.getStu_email());
				pstmt.setString(3, vo.getAddress());
				pstmt.setString(4, vo.getHome_tel());
				pstmt.setString(5, mem_num);
				pstmt.executeUpdate();

				result = 1; // update성공시 1 return
			} else {
				result = 0;// update실패시 0 return
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return result;

	}// update

	// 성적조회(누적) 데이터 불러오는 method
	public ArrayList<SungjukVO> TotalGradeList(String mem_num, String sj_grade, String sj_term) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();
		float valueSum = 0.0f, valueAvg = 0.0f;
		int hakSum = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from sungjuk where stu_num= ? and sj_grade = ? and sj_term = ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, sj_grade);
			pstmt.setString(3, sj_term);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SungjukVO vo = new SungjukVO();
				vo.setStu_num(rs.getString("stu_num"));
				vo.setSj_year(rs.getString("sj_year"));
				vo.setSj_grade(rs.getString("sj_grade"));
				vo.setSj_term(rs.getString("sj_term"));
				vo.setSub_grade(rs.getString("sub_grade"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setSub_hakjum(rs.getInt("sub_hakjum"));
				vo.setEmp_name(rs.getString("emp_name"));

				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}

		return list;
	}

	// 성적조회(누적) 페이지에서 데이터가 있는 학기 찾는 method
	public ArrayList<SungjukVO> GradeTermList(String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select DISTINCT sj_grade, sj_term from sungjuk where stu_num= ? ORDER BY sj_term, sj_grade ASC");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SungjukVO vo = new SungjukVO();
				vo.setSj_grade(rs.getString("sj_grade"));
				vo.setSj_term(rs.getString("sj_term"));
				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}

		return list;
	}

	// 학기별 학점 계산
	public int Calc(String mem_num, String sj_grade, String sj_term) {
		int result = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select sub_hakjum from sungjuk where stu_num= ? and sj_grade = ? and sj_term = ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, sj_grade);
			pstmt.setString(3, sj_term);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				result += rs.getInt("sub_hakjum");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}

		return result;
	}

	// 학기별 점수 계산
	public float Calc2(String mem_num, String sj_grade, String sj_term) {
		float avg = 0.0f, sum = 0.0f;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select sub_gradevalue from sungjuk where stu_num= ? and sj_grade = ? and sj_term = ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, sj_grade);
			pstmt.setString(3, sj_term);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				sum += rs.getInt("sub_gradevalue");
				list.add(sum);
			}
			avg = sum / list.size();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}

		return avg;
	}

	// 교양과목 총 학점 계산
	public int TotalKyo(String mem_num) {
		int total = 0, count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select sub_code from sungjuk where stu_num= ? and sub_code like ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, "KYO%");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				count++;
			}
			total = count * 2;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return total;
	}

	// 전공과목 총 학점 계산
	public int TotalNotKyo(String mem_num) {
		int total = 0, count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select sub_code from sungjuk where stu_num= ? and sub_code not like ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, "KYO%");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				count++;
			}
			total = count * 3;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return total;
	}

	// 총 학점 계산
	public int TotalHakjum(String mem_num) {
		int total = 0, count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select sub_hakjum from sungjuk where stu_num= ?");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				total += rs.getInt("sub_hakjum");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return total;
	}

	// 총 학점 계산
	public float TotalAvg(String mem_num) {
		float total = 0.0f, avg = 0.0f;
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select sub_gradeValue from sungjuk where stu_num = ?");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				total += rs.getInt("sub_gradeValue");
				count++;
			}
			avg = total / count;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return avg;
	}

	// 휴학신청 리스트 불러오는 method
	public List ListAbsence(String stu_num) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StudentVO vo = new StudentVO();
		List list = null;

		try {
			conn = getConnection();
			String sql = "select * from students where stu_num=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();

				do {
					vo.setStu_num(rs.getString("stu_num"));
					vo.setStu_name(rs.getString("stu_name"));
					vo.setStu_birthday(rs.getString("stu_birthday"));
					vo.setStu_professor(rs.getString("stu_professor"));
					vo.setStu_email(rs.getString("stu_email"));
					vo.setMajor(rs.getString("major"));
					vo.setAddress(rs.getString("address"));
					vo.setGrade(rs.getString("grade"));
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

	// 휴학신청 insert method
	public int i_o_AbsencePro(temporary_absenceReturnVO vo, String mem_num) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		temporary_absenceReturnVO vo2 = new temporary_absenceReturnVO();
		int result = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from students where stu_num = ? ");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String sql2 = "insert into temporary_absenceReturn(stu_num, stu_name, stu_grade, major, stu_birthday, stu_professor, stu_email, address, tel, absence)"
						+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";

				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, mem_num);
				pstmt.setString(2, rs.getString("stu_name"));
				pstmt.setString(3, rs.getString("grade"));
				pstmt.setString(4, rs.getString("major"));
				pstmt.setString(5, rs.getString("stu_birthday"));
				pstmt.setString(6, rs.getString("stu_professor"));
				pstmt.setString(7, vo.getStu_email());
				pstmt.setString(8, vo.getAddress());
				pstmt.setString(9, vo.getTel());
				pstmt.setString(10, vo.getAbsence());

				pstmt.executeUpdate();

				result = 0;
				System.out.println("신청 성공");

			} else {
				result = 1;
				System.out.println("신청 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(conn);
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
		}

		return result;
	}

	// 전과신청서 list 불러오는 method
	public List ListChangeMajor(String stu_num) throws Exception {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List list = null;
		StudentVO vo = new StudentVO();

		try {
			conn = getConnection();
			String sql = "select * from students where stu_num=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();

				do {
					vo.setStu_num(rs.getString("stu_num"));
					vo.setStu_name(rs.getString("stu_name"));
					vo.setStu_birthday(rs.getString("stu_birthday"));
					vo.setStu_professor(rs.getString("stu_professor"));
					vo.setStu_email(rs.getString("stu_email"));
					vo.setMajor(rs.getString("major"));
					vo.setGrade(rs.getString("grade"));
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

	// 전과신청서 insert method
	public int c_MajorPro(changeMajorVO vo, String mem_num) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		temporary_absenceReturnVO vo2 = new temporary_absenceReturnVO();
		int result = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from students where stu_num = ? ");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String sql2 = "insert into changeMajor(stu_num, stu_name, stu_grade, major, stu_birthday, stu_professor, stu_email, tel, change_major, reason_why)"
						+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";

				pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, mem_num);
				pstmt.setString(2, rs.getString("stu_name"));
				pstmt.setString(3, rs.getString("grade"));
				pstmt.setString(4, rs.getString("major"));
				pstmt.setString(5, rs.getString("stu_birthday"));
				pstmt.setString(6, rs.getString("stu_professor"));
				pstmt.setString(7, vo.getStu_email());
				pstmt.setString(8, vo.getTel());
				pstmt.setString(9, vo.getChange_major());
				pstmt.setString(10, vo.getReason_why());

				pstmt.executeUpdate();

				result = 0;
				System.out.println("신청 성공");

			} else {
				result = 1;
				System.out.println("신청 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(conn);
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
		}

		return result;
	}

	// 계절학기 성적출력 method
	public ArrayList<SungjukVO> ListSeasonGradeDB(String mem_num, String sj_grade, String sj_term) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from sungjuk where stu_num= ? and sj_grade = ? and sj_term = ?");
			pstmt.setString(1, mem_num);
			pstmt.setString(2, sj_grade);
			pstmt.setString(3, sj_term);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SungjukVO vo = new SungjukVO();
				vo.setStu_num(rs.getString("stu_num"));
				vo.setSj_year(rs.getString("sj_year"));
				vo.setSj_grade(rs.getString("sj_grade"));
				vo.setSj_term(rs.getString("sj_term"));
				vo.setSub_grade(rs.getString("sub_grade"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setSub_hakjum(rs.getInt("sub_hakjum"));
				vo.setEmp_name(rs.getString("emp_name"));

				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}
		return list;
	}

	public ArrayList<SungjukVO> SeasonGradeTermList(String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select DISTINCT sj_grade, sj_term from sungjuk where stu_num= ? ORDER BY sj_term, sj_grade ASC");
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				SungjukVO vo = new SungjukVO();
				vo.setSj_grade(rs.getString("sj_grade"));
				vo.setSj_term(rs.getString("sj_term"));
				list.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(rs);
			CloseUtil.close(conn);
		}

		return list;
	}

	// 강의 개설 method
	public int CreateLecture(SubjectVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;

		try {
			String sql = "insert into subject(sub_code, sub_name, sub_hakjum, emp_name, sub_time)"
					+ " values(?, ?, ?, ?, ?) ";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSub_code());
			pstmt.setString(2, vo.getSub_name());
			pstmt.setString(3, vo.getSub_hakjum());
			pstmt.setString(4, vo.getEmp_name());
			pstmt.setString(5, vo.getSub_time());
			pstmt.executeUpdate();

			result = 1;
			System.out.println("신청 성공");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(conn);
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
		}

		return result;
	}

	// 개설과목 전체 불러오기
	public ArrayList<SubjectVO> SubjectList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SubjectVO> list = new ArrayList<SubjectVO>();

		try {
			String sql = "select * from subject";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
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

	// 개설과목 중 수정할 데이터 불러오기
	public ArrayList<SubjectVO> SubjectUpdateList(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SubjectVO> list = new ArrayList<SubjectVO>();

		try {
			String sql = "select * from subject where sub_code = ?";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sub_code);
			rs = pstmt.executeQuery();

			if (rs.next()) {
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

	// 강의 수정 update method
	public int UpdateLecture(SubjectVO vo, String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int check = -1;

		try {
			conn = getConnection();
			String sql = "update subject set sub_code = ?, sub_name = ?, sub_hakjum = ?, emp_name=?, sub_time=? where sub_code=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSub_code());
			pstmt.setString(2, vo.getSub_name());
			pstmt.setString(3, vo.getSub_hakjum());
			pstmt.setString(4, vo.getEmp_name());
			pstmt.setString(5, vo.getSub_time());
			pstmt.setString(6, sub_code);
			pstmt.executeUpdate();

			check = 1;
			System.out.println("업데이트 성공");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return check;
	}

	// DeleteLecture
	public int DeleteLecture(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int check = 0;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from subject where sub_code = ?");
			pstmt.setString(1, sub_code);
			pstmt.executeUpdate();

			check = 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return check;
	}

	// 강의계획서 조회 (학생) method
	public List<Sub_detailVO> getSelectAll(String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		List list = null;

		try {
			conn = getConnection();
			String sql1 = "select grade, term from students where stu_num=?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, mem_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String sql2 = "select * from sungjuk where stu_num=? and sj_grade = ? and sj_term = ? ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, mem_num);
				pstmt2.setString(2, rs.getString("grade"));
				pstmt2.setString(3, rs.getString("term"));
				rs2 = pstmt2.executeQuery();
				/// 과목코드 찾기........
				if (rs2.next()) {
					list = new ArrayList();

					do {
						SungjukVO vo = new SungjukVO();
						vo.setEmp_name(rs2.getString("emp_name"));
						vo.setSj_grade(rs2.getString("sj_grade"));
						vo.setSub_code(rs2.getString("sub_code"));
						vo.setSub_hakjum(rs2.getInt("sub_hakjum"));
						vo.setSub_name(rs2.getString("sub_name"));
						list.add(vo);

					} while (rs2.next());

				}
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

	// 강의계획서 콘텐츠 조회 (학생) method
	public Sub_detailVO getDataDetail(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Sub_detailVO vo = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from sub_detail where sub_code = ? ");
			pstmt.setString(1, sub_code);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new Sub_detailVO();
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setLec_exam(rs.getString("lec_exam"));
				vo.setLec_purpose(rs.getString("lec_purpose"));
				vo.setSub_time(rs.getString("sub_time"));
				vo.setLec_detail(rs.getString("lec_detail"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return vo;
	}

	// 강의계획서 조회(관리자) method
	public List<Sub_detailVO> adminGetSelectAll(String mem_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		List list = null;
		String emp_name = null;
		try {
			conn = getConnection();
			String sql2 = "select * from members where mem_num=? ";
			pstmt = conn.prepareStatement(sql2);
			pstmt.setString(1, mem_num);
			rs2 = pstmt.executeQuery();
			if (rs2.next())
				emp_name = rs2.getString("mem_name");

			String sql1 = "select * from sub_detail where emp_name=?";
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, emp_name);
			rs = pstmt.executeQuery();

			list = new ArrayList();

			while (rs.next()) {
				Sub_detailVO vo = new Sub_detailVO();
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_time(rs.getString("sub_time"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setSub_name(rs.getString("sub_name"));
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

	// 강의계획서 콘텐츠 조회(관리자) method
	public Sub_detailVO adminGetDataDetail(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Sub_detailVO vo = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from sub_detail where sub_code = ? ");
			pstmt.setString(1, sub_code);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new Sub_detailVO();
				vo.setEmp_name(rs.getString("emp_name"));
				vo.setSub_code(rs.getString("sub_code"));
				vo.setSub_hakjum(rs.getString("sub_hakjum"));
				vo.setSub_name(rs.getString("sub_name"));
				vo.setLec_exam(rs.getString("lec_exam"));
				vo.setLec_purpose(rs.getString("lec_purpose"));
				vo.setSub_time(rs.getString("sub_time"));
				vo.setLec_detail(rs.getString("lec_detail"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return vo;
	}

	// 강의 계획서 수정(관리자) method
	public void updateLectureDate(Sub_detailVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";

		try {
			conn = getConnection();

			sql = "update sub_detail set lec_purpose = ?, lec_exam = ? , lec_detail = ? where sub_code = ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getLec_purpose());
			pstmt.setString(2, vo.getLec_exam());
			pstmt.setString(3, vo.getLec_detail());
			pstmt.setString(4, vo.getSub_code());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
	}

	// 학생성적보기(관리자) 교수별 과목 불러오기
	public ArrayList<SubjectVO> SubjectList2(String emp_name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<SubjectVO> list = new ArrayList<SubjectVO>();

		try {
			String sql = "select * from subject where emp_name = ?";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emp_name);
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

	// 학생성적보기(관리자) 교수별 과목 클릭하면 수강중인 학생들 목록 나옴
	public ArrayList<SungjukVO> SubjectListDetail(String sub_code) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ResultSet rs3 = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();

		try {
			conn = getConnection();
			String sql = "select stu_name, grade, term from students";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){	
				String sql2 = "select * from sungjuk where sub_code = ? order by sj_grade, sj_term asc ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, sub_code);	
				rs2 = pstmt2.executeQuery();
				
				while(rs2.next()){
					String sql3 = "select stu_name from students where stu_num = ? ";
					pstmt3 = conn.prepareStatement(sql3);
					pstmt3.setString(1, rs2.getString("stu_num"));
					rs3 = pstmt3.executeQuery();
					
					if(rs3.next()){
						
						SungjukVO vo = new SungjukVO();
						
						vo.setStu_num(rs2.getString("stu_num"));
						vo.setSj_year(rs2.getString("sj_year"));
						vo.setSj_grade(rs2.getString("sj_grade"));
						vo.setSj_term(rs2.getString("sj_term"));
						vo.setSub_grade(rs2.getString("sub_grade"));
						vo.setSub_gradevalue(rs2.getFloat("sub_gradevalue"));
						vo.setSub_code(rs2.getString("sub_code"));
						vo.setSub_name(rs2.getString("sub_name"));
						vo.setSub_hakjum(rs2.getInt("sub_hakjum"));
						vo.setEmp_name(rs2.getString("emp_name"));
						vo.setStu_name(rs3.getString("stu_name"));
						
						list.add(vo);
					}
				}
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
	
	//학생 성적 업데이트(교수) method
	public ArrayList<SungjukVO> StuGradeList(String check, String stu_num, String sj_grade, String sj_term) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs = null;
		ResultSet rs2 = null;
		ArrayList<SungjukVO> list = new ArrayList<SungjukVO>();

		try {
			conn = getConnection();
			String sql = "select * from sungjuk where sub_code = ? and stu_num = ? and sj_grade = ? and sj_term = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, check);
			pstmt.setString(2, stu_num);
			pstmt.setString(3, sj_grade);
			pstmt.setString(4, sj_term);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String sql2 = "select stu_name from students where stu_num = ? ";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, rs.getString("stu_num"));
				rs2 = pstmt2.executeQuery();	
				
				if(rs2.next()){
					SungjukVO vo = new SungjukVO();

					vo.setStu_num(rs.getString("stu_num"));
					vo.setSj_year(rs.getString("sj_year"));
					vo.setSj_grade(rs.getString("sj_grade"));
					vo.setSj_term(rs.getString("sj_term"));
					vo.setSub_grade(rs.getString("sub_grade"));
					vo.setSub_gradevalue(rs.getFloat("sub_gradevalue"));
					vo.setSub_code(rs.getString("sub_code"));
					vo.setSub_name(rs.getString("sub_name"));
					vo.setSub_hakjum(rs.getInt("sub_hakjum"));
					vo.setEmp_name(rs.getString("emp_name"));
					vo.setStu_name(rs2.getString("stu_name"));
					
					list.add(vo);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(rs2);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return list;
	}
	
	// 학생 성적 update method
	public int StuGradeUpdate(String mem_num, SungjukVO vo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int check = 0;
		
		try {
			conn = getConnection();
			String sql = "update sungjuk set sub_grade = ?, sub_gradevalue = ? "
					+ "where sub_code = ? and stu_num = ? and sj_grade = ? and sj_term = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSub_grade());
			pstmt.setFloat(2, vo.getSub_gradevalue());
			pstmt.setString(3, vo.getSub_code());
			pstmt.setString(4, vo.getStu_num());
			pstmt.setString(5, vo.getSj_grade());
			pstmt.setString(6, vo.getSj_term());
			pstmt.executeUpdate();
			
			check = 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return check;
	}
	
}
