package team2.miniproject.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.DAO_VO.JanghakVO;
import team2.miniproject.DAO_VO.Team2DAO;

public class ScholarshipAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String mem_num = request.getParameter("mem_num");
	      String mem_name = request.getParameter("mem_name");
	      String result = request.getParameter("result");
	      
	      ArrayList<JanghakVO> list = null;
	      
	      Team2DAO dao = Team2DAO.getInstance();
	      JanghakVO vo = new JanghakVO();
	      
	      list = dao.getJanghak(vo, mem_num);
	      
	      request.setAttribute("list", list);
	      request.setAttribute("mem_num", mem_num);
	      request.setAttribute("mem_name", mem_name);
	      request.setAttribute("result", result);

	      return "/jsp/scholarshipForm.jsp";

	}

}
