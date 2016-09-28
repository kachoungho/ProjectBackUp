package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.changeMajorVO;

public class C_MajorProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num");	
		
		Team2DAO dao = Team2DAO.getInstance();
		changeMajorVO vo = new changeMajorVO();
		
		vo.setStu_email(request.getParameter("editEmail"));
		vo.setTel(request.getParameter("editTel"));
		vo.setChange_major(request.getParameter("editChangeMajor"));
		vo.setReason_why(request.getParameter("editReasonWhy"));
		
		int check = dao.c_MajorPro(vo, mem_num );
		
		
		request.setAttribute("check", check);
		
		return "/jsp/c_MajorPro.jsp";
	}

}
