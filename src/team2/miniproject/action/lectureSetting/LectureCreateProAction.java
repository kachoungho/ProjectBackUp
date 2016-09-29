package team2.miniproject.action.lectureSetting;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class LectureCreateProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		Team2DAO dao = Team2DAO.getInstance();
		SubjectVO vo = new SubjectVO();
		
		vo.setSub_code(request.getParameter("sub_code"));
		vo.setSub_name(request.getParameter("sub_name"));
		vo.setSub_hakjum(request.getParameter("sub_hakjum"));
		vo.setEmp_name(request.getParameter("emp_name"));
		vo.setSub_time(request.getParameter("sub_time"));
		
		int check = dao.CreateLecture(vo);
		System.out.println("check : " + check);
		request.setAttribute("check", check);
		
		return "/jsp/lectureSetting/lectureCreatePro.jsp";
	}

}
