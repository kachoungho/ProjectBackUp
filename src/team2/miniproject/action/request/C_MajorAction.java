package team2.miniproject.action.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.changeMajorVO;
import team2.miniproject.action.CommandAction;

public class C_MajorAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num");		
		
		Team2DAO dao = Team2DAO.getInstance();
		changeMajorVO vo = new changeMajorVO();
		List list = null;
		
		list = dao.ListChangeMajor(mem_num);
		
		request.setAttribute("list", list);
		
		return "/jsp/request/c_MajorForm.jsp";
	}

}
