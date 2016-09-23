package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class AdviserAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		List list = null;
		

		Team2DAO dao = Team2DAO.getInstance();
		StudentVO vo = new StudentVO();
		
		list=dao.ListAdviserDB(mem_num);
		
		request.setAttribute("list", list);
		
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mem_name", mem_name);
		return "/jsp/adviserForm.jsp";
	}

}
