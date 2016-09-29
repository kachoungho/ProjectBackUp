package team2.miniproject.action.adminLecture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Sub_detailVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class AdminLectureDateContentsAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		String mem_name = request.getParameter("mem_name");
	    String result = request.getParameter("result");
	    String major ;

	    String sub_code =request.getParameter("sub_code");
		
		
		
		Team2DAO dao = Team2DAO.getInstance();
		Sub_detailVO vo = dao.adminGetDataDetail(sub_code);
		System.out.println();
			
		
	    
	    switch (vo.getSub_code().substring(0, 3)) {
	    case "COM":
			request.setAttribute("major", "컴퓨터공학과");
			break;
	    case "HUM":
			request.setAttribute("major", "인문학과");
			break;
	    case "DES":
			request.setAttribute("major", "시각디자인학과");
			break;

		default:
			request.setAttribute("major", "교양과목");

			break;
		}
		
		request.setAttribute("vo", vo);
			
		
		return "/jsp/adminLecture/adminLectureDateContents.jsp";
	}

}
