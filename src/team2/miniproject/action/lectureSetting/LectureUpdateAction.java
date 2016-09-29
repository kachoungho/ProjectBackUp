package team2.miniproject.action.lectureSetting;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class LectureUpdateAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		ArrayList<SubjectVO> list = null;

		Team2DAO dao = Team2DAO.getInstance();
		list = dao.SubjectList();
		
		request.setAttribute("list", list);
		
		return "/jsp/lectureSetting/lectureUpdateForm.jsp";
	}

}
