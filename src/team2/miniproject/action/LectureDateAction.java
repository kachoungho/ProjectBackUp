package team2.miniproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team2.miniproject.action.CommandAction;

public class LectureDateAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return "/jsp/lectureSetting/lectureDateForm.jsp";
	}

}
