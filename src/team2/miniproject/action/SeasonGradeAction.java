package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.CurrentSungJukVO;
import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class SeasonGradeAction implements CommandAction {

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

		Team2DAO dao = Team2DAO.getInstance();
		SungjukVO vo = new SungjukVO();


		list2 = dao.SeasonGradeTermList(mem_num);
		list = dao.ListSeasonGradeDB(mem_num, sj_grade, sj_term);
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		
		return "/jsp/seasonGradeForm.jsp";
	}

}
