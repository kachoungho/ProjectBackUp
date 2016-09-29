package team2.miniproject.action.lectureSetting;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class LectureDeleteAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");

		String checklist = request.getParameter("checkbox");
		System.out.println("checklist : " + checklist);
		
		Team2DAO dao = new Team2DAO();
		
		int check = dao.DeleteLecture(checklist);
		
		request.setAttribute("check", check);
		
		return "/jsp/lectureSetting/lectureDeleteForm.jsp";
	}

}
