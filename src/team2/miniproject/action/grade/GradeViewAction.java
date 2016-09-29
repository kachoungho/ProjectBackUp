package team2.miniproject.action.grade;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class GradeViewAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		String sj_grade = request.getParameter("sj_grade");
		String sj_term = request.getParameter("sj_term");
		
		ArrayList<SungjukVO> list = null;
		ArrayList<SungjukVO> list2 = null;
		int hakjum = 0, totalkyo=0, totalnotkyo=0, totalhakjum = 0;
		float avg = 0.0f , totalavg = 0.0f;
		
		Team2DAO dao = new Team2DAO();
		
		list = dao.TotalGradeList(mem_num, sj_grade, sj_term); 
		list2 = dao.GradeTermList(mem_num);
		hakjum = dao.Calc(mem_num, sj_grade, sj_term);
		avg = dao.Calc2(mem_num, sj_grade, sj_term);
		
		totalkyo = dao.TotalKyo(mem_num);
		totalnotkyo = dao.TotalNotKyo(mem_num);
		totalhakjum = dao.TotalHakjum(mem_num);
		totalavg = dao.TotalAvg(mem_num);
		
		session.setAttribute("sj_grade", sj_grade);
		session.setAttribute("sj_term", sj_term);
		request.setAttribute("totalkyo", totalkyo);
		request.setAttribute("totalnotkyo", totalnotkyo);
		request.setAttribute("totalhakjum", totalhakjum);
		request.setAttribute("totalavg", totalavg);
		request.setAttribute("hakjum", hakjum);
		request.setAttribute("avg", avg);
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		
		return "/jsp/grade/gradeViewForm.jsp";
	}

}
