package team2.miniproject.action.stuBasic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuGradeUpdateAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		String check = request.getParameter("check");
		String sj_grade = request.getParameter("sj_grade");
		String sj_term = request.getParameter("sj_term");
		String stu_num = request.getParameter("stu_num");

		ArrayList<SungjukVO> list = null;
		Team2DAO dao = Team2DAO.getInstance();
		
		list = dao.StuGradeList(check, stu_num, sj_grade, sj_term);
		
		request.setAttribute("list", list);		
		
		return "/jsp/stuBasic/stuGradeUpdateForm.jsp";
	}

}
