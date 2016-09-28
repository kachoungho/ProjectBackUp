package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;

public class I_o_AbsenceProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		
		Team2DAO dao = Team2DAO.getInstance();
		temporary_absenceReturnVO vo = new temporary_absenceReturnVO();
		
		vo.setStu_email(request.getParameter("editEmail"));
		vo.setAddress(request.getParameter("editAddress"));
		vo.setAbsence(request.getParameter("editAbsence"));
		vo.setTel(request.getParameter("editTel"));
				
		int check = dao.i_o_AbsencePro(vo, mem_num );
		request.setAttribute("check", check);
		
		return "/jsp/i_o_AbsencePro.jsp";
	}

}
