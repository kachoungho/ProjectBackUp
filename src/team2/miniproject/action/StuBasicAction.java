package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class StuBasicAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		String result = request.getParameter("result");
		String major = request.getParameter("major");
		ArrayList<StudentVO> list = null;
		String rt = null;
		
		
		Team2DAO dao = Team2DAO.getInstance();
		StudentVO vo = new StudentVO();
		
		if (major.equals("default")) {
			rt = "/jsp/stuBasicForm.jsp";
		} else if(major.equals("com")){
			major="컴퓨터공학";
			list = dao.getStudentData(major);
			request.setAttribute("list", list);
			rt = "/jsp/stuBasicForm.jsp";
		} else if(major.equals("human")){
			major="인문학과";
			list = dao.getStudentData(major);
			request.setAttribute("list", list);
			rt = "/jsp/stuBasicForm.jsp";
		} else if(major.equals("vision")){
			major="시각디자인학과";
			list = dao.getStudentData(major);
			request.setAttribute("list", list);
			rt = "/jsp/stuBasicForm.jsp";
		}  
		
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mem_name", mem_name);
		request.setAttribute("result", result);
		return rt;
	}
}
