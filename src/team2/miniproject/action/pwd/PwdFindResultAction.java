package team2.miniproject.action.pwd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.membersVO;
import team2.miniproject.action.CommandAction;

public class PwdFindResultAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String mem_num = request.getParameter("mem_num");
		String mem_name = request.getParameter("mem_name");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		int select = 0;
		int check = 0;

		Team2DAO dao = Team2DAO.getInstance();
		String mem_pwd = dao.getPwd(mem_num);
		
		if(mem_num.length() == 6){
			select = 1;
		} else {
			select = 4;
		}
		check = dao.pwdCheck(select, mem_num, mem_name, email, tel); 
		membersVO vo = new membersVO();
		
		vo.setMem_name(mem_name);
		vo.setMem_num(mem_num);
		vo.setMem_pwd(mem_pwd);
		
		request.setAttribute("vo", vo);
		request.setAttribute("check", check);
		
		return "/jsp/pwd/pwdFindResult.jsp";
	}

}
