package team2.miniproject.action.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;
import team2.miniproject.action.CommandAction;

public class I_o_AbsenceAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		
		Team2DAO dao = Team2DAO.getInstance();
		temporary_absenceReturnVO vo = new temporary_absenceReturnVO();
		List list = null;
		      
		list=dao.ListAbsence(mem_num);
			
		request.setAttribute("list", list);
		
		return "/jsp/request/i_o_AbsenceForm.jsp";
	}

}
