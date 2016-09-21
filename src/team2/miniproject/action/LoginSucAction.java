package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.Team2VO;

public class LoginSucAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String stu_num = request.getParameter("stu_num");
		String stu_pwd = request.getParameter("stu_pwd");
		String client = request.getParameter("client");
		/*
		Team2DAO dao = Team2DAO.getInstance();
		Team2VO vo = new Team2VO();
		dao.loginDB(stu_num, stu_pwd);*/
		
		request.setAttribute("stu_num", stu_num);
		request.setAttribute("stu_pwd", stu_pwd);
		request.setAttribute("client", client);
		
		return "/jsp/loginSuc.jsp";
	}

}
