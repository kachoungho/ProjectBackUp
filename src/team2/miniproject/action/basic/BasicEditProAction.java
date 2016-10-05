package team2.miniproject.action.basic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class BasicEditProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		StudentVO vo = new StudentVO();

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String) session.getAttribute("mem_num");
		String mem_name = (String) session.getAttribute("mem_name");
		String result = (String) session.getAttribute("result");

		Team2DAO dao = Team2DAO.getInstance();

		vo.setTel(request.getParameter("editTel"));
		vo.setStu_email(request.getParameter("editEmail"));
		vo.setAddress(request.getParameter("editAddress"));
		vo.setHome_tel(request.getParameter("editHomeTel"));
		vo.setStu_pwd(request.getParameter("editPwd"));

		int check = dao.update(mem_num, vo);

		request.setAttribute("check", check);
		return "/jsp/basic/basicEditPro.jsp";

	}

}
