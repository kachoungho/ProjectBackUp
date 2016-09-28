package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.CurrentSungJukVO;
import team2.miniproject.DAO_VO.SungjukVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class CurrentGradeAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		System.out.println("mem_num : " + mem_num);
		ArrayList<CurrentSungJukVO> list = null;
		
		Team2DAO dao = Team2DAO.getInstance();
		SungjukVO vo = new SungjukVO();
		
		
		list=dao.ListCurrentGradeDB(mem_num);
		
		
		System.out.println("list 크기 : " + list.size());
		request.setAttribute("list", list);
		
		return "/jsp/currentGradeForm.jsp";
	}

}
