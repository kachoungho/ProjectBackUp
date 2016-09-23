package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MultiMajorStatusAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		
		request.setAttribute("mem_num", mem_num);
		return "/jsp/multiMajorStatusForm.jsp";
	}

}
