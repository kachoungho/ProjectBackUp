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
		
		
		String editTel = request.getParameter("editTel");
		String editEmail = request.getParameter("editEmail");
		String editAddress = request.getParameter("editAddress");
		String editHomeTel = request.getParameter("editHomeTel");

		System.out.println("여기까지3");

		System.out.println("mem_num : " + mem_num);
		System.out.println("editTel : " + editTel);
		System.out.println("editEmail : " + editEmail);
		System.out.println("editAddress : " + editAddress);
		System.out.println("editHomeTel : " + editHomeTel);

		Team2DAO dao = Team2DAO.getInstance();
		System.out.println("여기까진 넘어옴");

		vo.setTel(editTel);
		vo.setStu_email(editEmail);
		vo.setAddress(editAddress);
		vo.setHome_tel(editHomeTel);

		int check = dao.update(mem_num, vo);

		request.setAttribute("check", check);
		return "/jsp/basic/basicEditPro.jsp";

	}

}
