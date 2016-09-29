package team2.miniproject.action.stuBasic;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.StudentVO;
import team2.miniproject.DAO_VO.Sub_detailVO;
import team2.miniproject.DAO_VO.SubjectVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class StuGradeAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String mem_num = (String)session.getAttribute("mem_num"); 
		String mem_name = (String)session.getAttribute("mem_name"); 
		String result = (String)session.getAttribute("result"); 
		
		ArrayList<SubjectVO> list = null;
		int count = 0;
		Team2DAO dao = Team2DAO.getInstance();
		list = dao.SubjectList2(mem_name);
		count = list.size();
		System.out.println("count : " + count);
		
		request.setAttribute("list", list);
		request.setAttribute("count", new Integer(count));
		return "/jsp/stuBasic/stuGradeForm.jsp";
	}

}
