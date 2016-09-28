package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.employeeVO;

public class AdminUpdateEditAction implements CommandAction {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");
		
		
		String editMajor = request.getParameter("editMajor");
		String editEmp_grade = request.getParameter("editEmp_grade");
		String editMon_lev = request.getParameter("editMon_lev");
		String editTel = request.getParameter("editTel");
		String editEmp_email = request.getParameter("editEmp_email");
		String editMoney = request.getParameter("editMoney");
		String editEmp_pwd = request.getParameter("editEmp_pwd");
		
		
		employeeVO vo = new employeeVO();
		List list= null;
		
		Team2DAO dao = Team2DAO.getInstance();
		vo.setMajor(editMajor);
		vo.setEmp_grade(editEmp_grade);
		vo.setMon_lev(editMon_lev);
		vo.setTel(editTel);
		vo.setEmp_email(editEmp_email);
		vo.setMoney(editMoney);
		vo.setEmp_pwd(editEmp_pwd);		
		
		int check = dao.adminBasic_update(mem_num, vo);
		
		request.setAttribute("list", list);
		request.setAttribute("check", check);
		
		return "/jsp/adminBasicUpdateForm.jsp";
	}
}
