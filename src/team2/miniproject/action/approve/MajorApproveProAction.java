package team2.miniproject.action.approve;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.DAO_VO.temporary_absenceReturnVO;
import team2.miniproject.action.CommandAction;

public class MajorApproveProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("여기까지입니다.1");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		
		String checkbox = request.getParameter("checkbox");
		String fullcheckbox= request.getParameter("buttond");//전체선택  점검하기
		String major = request.getParameter("major");
		
		System.out.println("\n\nmajor : " + major + "\n\n");
		
		
		System.out.println("check값은:"+checkbox+"입니다.");
		System.out.println("fullcheck값은:"+fullcheckbox+"입니다.");
		
		Team2DAO dao = Team2DAO.getInstance();
		temporary_absenceReturnVO vo = new temporary_absenceReturnVO();
		List list = null;
		List list2 = null;
		System.out.println("여기까지입니다2."+mem_num);
		list=dao.ListadminMajorPro(mem_num,checkbox);
		System.out.println("리스트입니다:"+list);
		list2=dao.ListadminMajorDel(mem_num, checkbox);
		System.out.println("리스트2 입니다.:" + list2);
		
		
		
		System.out.println("Pro끝부분입니다");
		return "/jsp/approve/majorApprovePro.jsp";	
	}

}
