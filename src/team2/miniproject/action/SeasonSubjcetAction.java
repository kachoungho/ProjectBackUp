package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.PickSubjectVO;
import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class SeasonSubjcetAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
	
		String check = request.getParameter("check");		//신청할때 과목 코드값
		String check2 = request.getParameter("check2");
		
		ArrayList<SubjectVO> list = null;
		ArrayList<PickSubjectVO> list2 = null;
		PickSubjectVO Pickvo = new PickSubjectVO();
		Team2DAO dao = Team2DAO.getInstance();
		
		String pick = "KYO1%";
		System.out.println("\n\ncheck : " + check);
		System.out.println("check2 : " + check2 + "\n\n");
		
		if(check2 != null){
			dao.SeasonDelete(check2);
		}
		if (check != null) {
			dao.InsertPickSeason(check, mem_num);
		}
		list = dao.getSeasonData(pick);
		
		list2 = dao.PickSeason(Pickvo, mem_num);
		
		if(list2 != null){
			request.setAttribute("picklist", list2);
		}
		
		request.setAttribute("list", list);
		return "/jsp/seasonSubjcetForm.jsp";
	}

}
