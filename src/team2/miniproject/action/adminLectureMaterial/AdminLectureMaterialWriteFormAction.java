package team2.miniproject.action.adminLectureMaterial;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.action.CommandAction;

public class AdminLectureMaterialWriteFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String sub_code = request.getParameter("sub_code");
		String sub_name = request.getParameter("sub_name");
		
		System.out.println(mem_num);
		System.out.println(mem_name);
		System.out.println(sub_code);
		System.out.println(sub_name);
		

		session.setAttribute("sub_name",sub_name);
		session.setAttribute("sub_code",sub_code);
		
		return "/jsp/adminLectureMaterial/adminLectureMaterialWriteForm.jsp";
	}
	
}
