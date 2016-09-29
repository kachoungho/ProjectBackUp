package team2.miniproject.action.stuBasic;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StuPickVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuPickSubjectAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		String major = request.getParameter("major");
		
		ArrayList<StuPickVO> list = null;
		String rt = null;
		
		Team2DAO dao = Team2DAO.getInstance();
		
		if (major.equals("default")) {
			rt = "/jsp/stuBasic/stuPickSubjectForm.jsp";
			
		} else if(major.equals("com")){
			major="컴퓨터공학";
			list = dao.getPickList(major);
			request.setAttribute("list", list);
			if(list != null){
				System.out.println("list값 있음");
			}
			rt = "/jsp/stuBasic/stuPickSubjectForm.jsp";
			
		} else if(major.equals("human")){
			major="인문학과";
			list = dao.getPickList(major);
			request.setAttribute("list", list);
			rt = "/jsp/stuBasic/stuPickSubjectForm.jsp";
			
		} else if(major.equals("vision")){
			major="시각디자인학과";
			list = dao.getPickList(major);
			request.setAttribute("list", list);
			rt = "/jsp/stuBasic/stuPickSubjectForm.jsp";
		}  
		session.setAttribute("major", major);
		return rt;
	}

}
