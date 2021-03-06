package team2.miniproject.action.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;
import team2.miniproject.action.CommandAction;

public class G_b_SchoolProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		Team2DAO dao = Team2DAO.getInstance();		
		
		int check = dao.G_b_SchoolPro(mem_num );
		request.setAttribute("check", check);
		request.setAttribute("mem_num", mem_num);
		
		return "/jsp/request/g_b_SchoolPro.jsp";
	}

}
