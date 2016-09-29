package team2.miniproject.action.basic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.JanghakVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class ScholarshipAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");

		ArrayList<JanghakVO> list = null;

		Team2DAO dao = Team2DAO.getInstance();
		JanghakVO vo = new JanghakVO();

		list = dao.getJanghak(vo, mem_num);

		request.setAttribute("list", list);

		return "/jsp/basic/scholarshipForm.jsp";

	}

}
