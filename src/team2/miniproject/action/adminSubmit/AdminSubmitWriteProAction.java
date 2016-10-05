package team2.miniproject.action.adminSubmit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SubmitVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class AdminSubmitWriteProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String sub_code = request.getParameter("sub_code");
		String sub_name = request.getParameter("sub_name");

		SubmitVO vo = new SubmitVO();
		vo.setEmp_num(mem_num);
		vo.setSub_code(sub_code);
		vo.setSubmit_content(request.getParameter("submit_content"));
		vo.setSubmit_week(request.getParameter("submit_week"));
		vo.setSubmit_title(request.getParameter("submit_title"));
		
		Team2DAO dao = Team2DAO.getInstance();
		dao.insertSubmit(vo);
		
		request.setAttribute("sub_code", sub_code);
		request.setAttribute("sub_name", sub_name);
		
		return "/jsp/adminSubmit/adminSubmitWritePro.jsp";
	}

}
