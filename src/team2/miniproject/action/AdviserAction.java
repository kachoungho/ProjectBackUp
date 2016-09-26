package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class AdviserAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		List list = null;
		

		Team2DAO dao = Team2DAO.getInstance();
		StudentVO vo = new StudentVO();
		
		list=dao.ListAdviserDB(mem_num);
		
		request.setAttribute("list", list);
		
		return "/jsp/adviserForm.jsp";
	}

}
