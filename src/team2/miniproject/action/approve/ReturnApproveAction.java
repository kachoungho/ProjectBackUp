package team2.miniproject.action.approve;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;
import team2.miniproject.action.CommandAction;

public class ReturnApproveAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("여기까지입니다.1");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		
		Team2DAO dao = Team2DAO.getInstance();
		temporary_absenceReturnVO vo = new temporary_absenceReturnVO();
		List list = null;
		System.out.println("여기까지입니다2.form="+mem_num);
		list=dao.ListReturnadminSemester(mem_num);
		System.out.println("리스트입니다:"+list);
		request.setAttribute("mem_num", mem_num);
		request.setAttribute("list", list);
		
		
		return "/jsp/approve/returnApprove.jsp";	
	}

}
