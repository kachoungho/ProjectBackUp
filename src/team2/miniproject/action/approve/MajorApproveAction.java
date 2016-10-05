package team2.miniproject.action.approve;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.changeMajorVO;
import team2.miniproject.action.CommandAction;

public class MajorApproveAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		
		Team2DAO dao = Team2DAO.getInstance();
		changeMajorVO vo = new changeMajorVO();
		List list = null;
		list = dao.ListAdminChangeMajor(mem_num);		//관리자함수만들기

		request.setAttribute("mem_num", mem_num);
		request.setAttribute("list", list);

		return "/jsp/approve/majorApprove.jsp";

		}

}
