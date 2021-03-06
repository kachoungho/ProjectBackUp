package team2.miniproject.action.adminLectureMaterial;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class AdminLectureMaterialListFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = (String)session.getAttribute("mem_name");
		String sub_code = request.getParameter("sub_code");
		String sub_name = request.getParameter("sub_name");
	    
		Team2DAO dao = Team2DAO.getInstance();
		System.out.println(mem_num);
		System.out.println(mem_name);
		System.out.println(sub_code);
		System.out.println(sub_name);

		List list = null;
		list = dao.adminLectureMaterialGetSelectAll(mem_num, sub_code);
		int count = list.size();

		request.setAttribute("count",count);
		request.setAttribute("list",list);
		request.setAttribute("emp_name",mem_name);
		request.setAttribute("sub_name",sub_name);
		request.setAttribute("sub_code",sub_code);

		
		return "/jsp/adminLectureMaterial/adminLectureMaterialListForm.jsp";
	}

}
