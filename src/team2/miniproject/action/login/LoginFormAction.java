package team2.miniproject.action.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.membersVO;
import team2.miniproject.action.CommandAction;

public class LoginFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*30);
		
		String mem_num = request.getParameter("mem_num");
		String mem_pwd = request.getParameter("mem_pwd");

		int result = 0;
		String mem_name = null;
		String rt = null;
		Team2DAO dao = Team2DAO.getInstance();
		membersVO vo = new membersVO();
		result = dao.loginDB(mem_num, mem_pwd); // result =1
		mem_name = dao.ListloginDB(mem_num, mem_pwd);
		

		session.setAttribute("mem_num", mem_num);
		session.setAttribute("mem_pwd", mem_pwd);
		
		if (result == 1) {
			session.setAttribute("client", "user");
			session.setAttribute("mem_name", mem_name);
			rt = "/jsp/login/logincheck.jsp";
		} else if (result == 2) {
			session.setAttribute("client", "admin");
			session.setAttribute("mem_name", mem_name);
			rt = "/jsp/login/logincheck.jsp";
		} else if (result == 3) {
			session.setAttribute("client", "mainadmin");
			session.setAttribute("mem_name", mem_name);
			rt = "/jsp/login/logincheck.jsp";
		} else {
			rt = "/jsp/main.jsp";
			System.out.println("LoginFormAction부분 reuslt : " + result);
		}

		request.setAttribute("result", new Integer(result));

		return rt;
	}
}
