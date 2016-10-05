package team2.miniproject.action.stuBasic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuGradeUpdateProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");

		SungjukVO vo = new SungjukVO();
		vo.setStu_num(request.getParameter("stu_num"));
		vo.setSub_code(request.getParameter("sub_code"));
		vo.setSj_grade(request.getParameter("sj_grade"));
		vo.setSj_term(request.getParameter("sj_term"));
		vo.setSub_grade(request.getParameter("sub_grade"));
		vo.setSub_gradevalue(new Float(request.getParameter("sub_gradevalue")));
		
		Team2DAO dao = new Team2DAO();
		int check = 0;
		
		check = dao.StuGradeUpdate(mem_num, vo);
		request.setAttribute("check", check);
		
		return "/jsp/stuBasic/stuGradeUpdatePro.jsp";
	}

}
