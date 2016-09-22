package team2.miniproject.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.membersVO;

public class LoginFormAction implements CommandAction {
/* Table 변경전 method
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("여긴옴?");
		String stu_num = request.getParameter("stu_num");
		String stu_pwd = request.getParameter("stu_pwd");
		int result = 0;
		String rt = null;
		
		Team2DAO dao = Team2DAO.getInstance();
		result = dao.loginDB(stu_num, stu_pwd);
		
		
		request.setAttribute("stu_num", stu_num);
		request.setAttribute("stu_pwd", stu_pwd);
		
		if(result == 1) {
			request.setAttribute("client", "user");
			rt = "/jsp/logincheck.jsp";
		} else if(result == 2) {
			request.setAttribute("client", "admin");
			rt = "/jsp/logincheck.jsp";
		} else {//if(result == 5)
			//rt = "/jsp/main.jsp";
			rt = "/jsp/main.jsp";
			System.out.println("reuslt : " + result);
		}
		
		System.out.println("return 값 : " + rt);
		request.setAttribute("result", new Integer(result));
		return rt;
	}
*/
	//Table 변경후 method
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("여긴옴?");
		String mem_num = request.getParameter("mem_num");
		String mem_pwd = request.getParameter("mem_pwd");
		int result = 0;
		List list = null;
		String rt = null;
		
		
		Team2DAO dao = Team2DAO.getInstance();
		membersVO vo = new membersVO();
		result = dao.loginDB(mem_num, mem_pwd);
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
			rt = "/jsp/logincheck.jsp";
		} else/* if(result == 5)*/ {
			/*rt = "/jsp/main.jsp";*/
			rt = "/jsp/main.jsp";
			System.out.println("LoginFormAction부분 reuslt : " + result);
		}
		
		System.out.println("return 값 : " + rt);
		request.setAttribute("result", new Integer(result));
		
		return rt;
	}
}
