package team2.miniproject.action.stuSubmit;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Sub_detailVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuSubmitViewAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String sub_code = request.getParameter("sub_code");
		String sub_name = request.getParameter("sub_name");
		String week = request.getParameter("week");
	    
		Team2DAO dao = Team2DAO.getInstance();
		List<Map<String, Object>> report = null;
		List list = null;
		int count = 0;
		String rt = null;
		
		if(week.equals("default")){
			rt = "/jsp/stuSubmit/stuSubmitView.jsp";
		} else {
			list = dao.stuSubmitGetSelectAll(sub_code, week);
			report = dao.getAllPds(sub_code, week);
			request.setAttribute("list",list);
			request.setAttribute("report", report);
			count = list.size();
			request.setAttribute("count",count);
			rt = "/jsp/stuSubmit/stuSubmitView.jsp";
		}
		
		
		session.setAttribute("sub_name",sub_name);
		session.setAttribute("sub_code",sub_code);
		
		return rt;
	}
}
