package team2.miniproject.action.adminSubmit;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class AdminSubmitListFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String sub_code = request.getParameter("sub_code");
		String sub_name = request.getParameter("sub_name");
		String week = request.getParameter("week");
		List list = null;
		List list2 = null;
		String rt = null;
		int count = 0;
		Team2DAO dao = Team2DAO.getInstance();
		
		if(week.equals("default")){
			rt = "/jsp/adminSubmit/adminSubmitListForm.jsp";
		} else {
			list = dao.adminSubmitGetSelectAll(mem_num, sub_code, week);
			list2 = dao.adminSubmitGetSelect(mem_num, sub_code, week);
			count = list.size();
			request.setAttribute("count",count);
			request.setAttribute("list",list);
			request.setAttribute("list2",list2);
			rt = "/jsp/adminSubmit/adminSubmitListForm.jsp";
		}

		
		
		
		request.setAttribute("emp_name",mem_name);
		request.setAttribute("sub_name",sub_name);
		request.setAttribute("sub_code",sub_code);

		
		return rt;
	}

}
