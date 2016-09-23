package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.employeeVO;

public class AdminBasicAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		String result = request.getParameter("result");
		List list = null;
		
		Team2DAO dao = Team2DAO.getInstance();
		employeeVO vo = new employeeVO(); 
		
		list=dao.ListAdminBasicDB(mem_num);
		
		request.setAttribute("list", list);
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mem_name", mem_name);
		request.setAttribute("result", result);
		return "/jsp/adminBasicForm.jsp";
	}

}
