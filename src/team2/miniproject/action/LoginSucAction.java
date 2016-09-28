package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginSucAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String result = request.getParameter("result");
		
		HttpSession session = request.getSession(); 
        session.setAttribute("result", result);
		
		return "/jsp/loginSuc.jsp";
	}

}
