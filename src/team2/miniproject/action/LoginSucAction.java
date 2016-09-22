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
		/*
		Team2DAO dao = Team2DAO.getInstance();
		Team2VO vo = new Team2VO();
		dao.loginDB(stu_num, stu_pwd);*/
		
		
	/*	Team2DAO dao = Team2DAO.getInstance();
		membersVO vo = new membersVO();
		dao.loginDB(mem_num, mem_pwd);*/
		
		request.setAttribute("mem_num", mem_num);
		//request.setAttribute("mem_name", vo.getMem_name());
		request.setAttribute("mem_pwd", mem_pwd);
		request.setAttribute("client", client);
		
		return "/jsp/loginSuc.jsp";
	}

}
