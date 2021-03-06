package team2.miniproject.action.adminBasic;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.employeeVO;
import team2.miniproject.action.CommandAction;

public class AdminBasicEditAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");

		Team2DAO dao = Team2DAO.getInstance();
		employeeVO vo = new employeeVO();
		List list = null;

		list = dao.ListAdminBasicDB(mem_num);

		request.setAttribute("list", list);

		return "/jsp/adminBasic/adminBasicEditForm.jsp";
	}

}
