package team2.miniproject.action.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;
import team2.miniproject.action.CommandAction;

public class G_b_SchoolAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		try {
			
			Team2DAO dao = Team2DAO.getInstance();
			temporary_absenceReturnVO vo = new temporary_absenceReturnVO();
			List list = null;
		    list=dao.ListReturnSemester(mem_num);
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/jsp/request/g_b_SchoolForm.jsp";
	}

}
