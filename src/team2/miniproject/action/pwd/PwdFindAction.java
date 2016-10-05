package team2.miniproject.action.pwd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.action.CommandAction;

public class PwdFindAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		return "/jsp/pwd/pwdFind.jsp";
	}

}
