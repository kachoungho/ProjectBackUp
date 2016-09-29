package team2.miniproject.action.adminLecture;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class AdminLectureDateAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = request.getParameter("mem_name");
	    String result = request.getParameter("result");
	    
		Team2DAO dao = Team2DAO.getInstance();
		System.out.println(mem_num);

		int count = 0;

		List list = null;
		list = dao.adminGetSelectAll(mem_num);
		count=list.size();
		
		System.out.println(count);
		
			request.setAttribute("count", new Integer(count));
			request.setAttribute("list",list);
		
			return "/jsp/adminLecture/adminLectureDateForm.jsp";
	}

}
