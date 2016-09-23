package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.Team2VO;
import team2.miniproject.DAO_VO.membersVO;

public class LoginSucAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		String mem_pwd = request.getParameter("mem_pwd");
		String client = request.getParameter("client");
		String result = request.getParameter("result");
		
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("mem_name",mem_name);
		request.setAttribute("mem_pwd", mem_pwd);
		request.setAttribute("client", client);
		request.setAttribute("result", result);
		
		return "/jsp/loginSuc.jsp";
	}

}
