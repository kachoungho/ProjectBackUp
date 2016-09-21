package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;

public class LoginFormAction implements CommandAction {

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
		} else/* if(result == 5)*/ {
			/*rt = "/jsp/main.jsp";*/
			rt = "/jsp/main.jsp";
			System.out.println("reuslt : " + result);
		}
		
		System.out.println("return 값 : " + rt);
		request.setAttribute("result", new Integer(result));
		return rt;
	}

}
