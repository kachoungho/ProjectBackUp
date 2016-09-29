package team2.miniproject.action.stuBasic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuGradeDetailAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		String sub_code = request.getParameter("sub_code");
		System.out.println("sub_code : " + sub_code);
		ArrayList<SungjukVO> list = null;
		Team2DAO dao = Team2DAO.getInstance();
		list = dao.SubjectListDetail(sub_code);
		int count = 0;
		count = list.size();
		System.out.println("count : " + count );
		
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		
		return "/jsp/stuBasic/stuGradeDetailFrom.jsp";
	}

}
