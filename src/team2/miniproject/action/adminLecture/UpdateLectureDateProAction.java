package team2.miniproject.action.adminLecture;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team2.miniproject.DAO_VO.Sub_detailVO;
import team2.miniproject.DAO_VO.Team2DAO;
import team2.miniproject.action.CommandAction;

public class UpdateLectureDateProAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(); 
		String mem_num = (String)session.getAttribute("mem_num");
		
		String sub_code = request.getParameter("sub_code");
System.out.println("sub_code ==" + sub_code);
		Sub_detailVO vo = new Sub_detailVO();
		vo.setSub_code(sub_code);
		vo.setLec_purpose(request.getParameter("lec_purpose"));
		vo.setLec_exam(request.getParameter("lec_exam"));
		vo.setLec_detail(request.getParameter("lec_detail"));
		
		Team2DAO dao = Team2DAO.getInstance();
		dao.updateLectureDate(vo);
		System.out.println("업댓 됨");

		request.setAttribute("sub_code", vo.getSub_code());
	  	
		return "/jsp/adminLecture/updateLectureDatePro.jsp";
	}

}
