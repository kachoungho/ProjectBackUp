package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.employeeVO;

public class AdminBasicAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		List list = null;
		
		Team2DAO dao = Team2DAO.getInstance();
		employeeVO vo = new employeeVO(); 
		
		list=dao.ListAdminBasicDB(mem_num);
		
		request.setAttribute("list", list);
		return "/jsp/adminBasicForm.jsp";
	}

}
