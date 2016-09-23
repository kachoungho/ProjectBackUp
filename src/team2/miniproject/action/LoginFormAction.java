package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.membersVO;

public class LoginFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("여긴옴?");
		String mem_num = request.getParameter("mem_num");
		String mem_pwd = request.getParameter("mem_pwd");
	
		int result = 0;
		List list = null;
		String rt = null;
		
		
		Team2DAO dao = Team2DAO.getInstance();
		
		membersVO vo = new membersVO();
		
		result = dao.loginDB(mem_num, mem_pwd);		//result =1
		
		list = dao.ListloginDB(mem_num, mem_pwd);
		
		
		request.setAttribute("mem_num", mem_num);
		
		request.setAttribute("mem_pwd", mem_pwd);
		
		/*
	request.setAttribute("mem_name", list.mem_name);*/
		
		if(result == 1) {
			request.setAttribute("client", "user");
			request.setAttribute("list", list);
			rt = "/jsp/logincheck.jsp";
		} else if(result == 2) {
			request.setAttribute("client", "admin");
			request.setAttribute("list", list);
			rt = "/jsp/logincheck.jsp";
		} else{
			rt = "/jsp/main.jsp";
			System.out.println("LoginFormAction부분 reuslt : " + result);
		}
		
		System.out.println("return 값 : " + rt);
		request.setAttribute("result", new Integer(result));
		
		return rt;
	}
}
